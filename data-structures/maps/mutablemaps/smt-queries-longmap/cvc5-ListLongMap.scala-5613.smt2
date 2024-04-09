; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73490 () Bool)

(assert start!73490)

(declare-fun b_free!14377 () Bool)

(declare-fun b_next!14377 () Bool)

(assert (=> start!73490 (= b_free!14377 (not b_next!14377))))

(declare-fun tp!50636 () Bool)

(declare-fun b_and!23751 () Bool)

(assert (=> start!73490 (= tp!50636 b_and!23751)))

(declare-fun mapIsEmpty!26369 () Bool)

(declare-fun mapRes!26369 () Bool)

(assert (=> mapIsEmpty!26369 mapRes!26369))

(declare-fun b!857771 () Bool)

(declare-fun res!582824 () Bool)

(declare-fun e!478098 () Bool)

(assert (=> b!857771 (=> (not res!582824) (not e!478098))))

(declare-datatypes ((array!49188 0))(
  ( (array!49189 (arr!23621 (Array (_ BitVec 32) (_ BitVec 64))) (size!24062 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49188)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49188 (_ BitVec 32)) Bool)

(assert (=> b!857771 (= res!582824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857772 () Bool)

(declare-fun e!478093 () Bool)

(declare-fun tp_is_empty!16513 () Bool)

(assert (=> b!857772 (= e!478093 tp_is_empty!16513)))

(declare-fun b!857773 () Bool)

(declare-fun e!478096 () Bool)

(assert (=> b!857773 (= e!478096 tp_is_empty!16513)))

(declare-fun b!857774 () Bool)

(declare-fun e!478092 () Bool)

(assert (=> b!857774 (= e!478092 (and e!478096 mapRes!26369))))

(declare-fun condMapEmpty!26369 () Bool)

(declare-datatypes ((V!27065 0))(
  ( (V!27066 (val!8304 Int)) )
))
(declare-datatypes ((ValueCell!7817 0))(
  ( (ValueCellFull!7817 (v!10725 V!27065)) (EmptyCell!7817) )
))
(declare-datatypes ((array!49190 0))(
  ( (array!49191 (arr!23622 (Array (_ BitVec 32) ValueCell!7817)) (size!24063 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49190)

(declare-fun mapDefault!26369 () ValueCell!7817)

