; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104704 () Bool)

(assert start!104704)

(declare-fun b_free!26485 () Bool)

(declare-fun b_next!26485 () Bool)

(assert (=> start!104704 (= b_free!26485 (not b_next!26485))))

(declare-fun tp!92942 () Bool)

(declare-fun b_and!44259 () Bool)

(assert (=> start!104704 (= tp!92942 b_and!44259)))

(declare-fun mapIsEmpty!48838 () Bool)

(declare-fun mapRes!48838 () Bool)

(assert (=> mapIsEmpty!48838 mapRes!48838))

(declare-fun b!1247811 () Bool)

(declare-fun e!708020 () Bool)

(declare-fun tp_is_empty!31387 () Bool)

(assert (=> b!1247811 (= e!708020 tp_is_empty!31387)))

(declare-fun b!1247812 () Bool)

(declare-fun res!832627 () Bool)

(declare-fun e!708022 () Bool)

(assert (=> b!1247812 (=> (not res!832627) (not e!708022))))

(declare-datatypes ((array!80445 0))(
  ( (array!80446 (arr!38786 (Array (_ BitVec 32) (_ BitVec 64))) (size!39323 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80445)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80445 (_ BitVec 32)) Bool)

(assert (=> b!1247812 (= res!832627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247813 () Bool)

(declare-fun e!708023 () Bool)

(declare-fun e!708024 () Bool)

(assert (=> b!1247813 (= e!708023 (and e!708024 mapRes!48838))))

(declare-fun condMapEmpty!48838 () Bool)

(declare-datatypes ((V!47215 0))(
  ( (V!47216 (val!15756 Int)) )
))
(declare-datatypes ((ValueCell!14930 0))(
  ( (ValueCellFull!14930 (v!18452 V!47215)) (EmptyCell!14930) )
))
(declare-datatypes ((array!80447 0))(
  ( (array!80448 (arr!38787 (Array (_ BitVec 32) ValueCell!14930)) (size!39324 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80447)

(declare-fun mapDefault!48838 () ValueCell!14930)

