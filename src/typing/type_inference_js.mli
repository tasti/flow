(**
 * Copyright (c) 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "flow" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

open Reason_js
open Utils_js

val infer_ast:
  ?gc: bool ->
  metadata: Context.metadata ->
  filename: Loc.filename ->
  module_name: Modulename.t ->
  Spider_monkey_ast.program ->
  Context.t

val mk_object: Context.t -> reason -> Type.t

val infer_lib_file:
  max_trace_depth: int ->
  verbose: int option ->
  strip_root: bool ->
  exclude_syms:SSet.t ->
  filename ->
  Spider_monkey_ast.Statement.t list ->
  Spider_monkey_ast.Comment.t list ->
  Context.t * string list
