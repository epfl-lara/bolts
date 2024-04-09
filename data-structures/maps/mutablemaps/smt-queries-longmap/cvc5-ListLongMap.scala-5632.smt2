; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73604 () Bool)

(assert start!73604)

(declare-fun b_free!14491 () Bool)

(declare-fun b_next!14491 () Bool)

(assert (=> start!73604 (= b_free!14491 (not b_next!14491))))

(declare-fun tp!50977 () Bool)

(declare-fun b_and!23979 () Bool)

(assert (=> start!73604 (= tp!50977 b_and!23979)))

(declare-fun b!860458 () Bool)

(declare-fun res!584892 () Bool)

(declare-fun e!479499 () Bool)

(assert (=> b!860458 (=> (not res!584892) (not e!479499))))

(declare-datatypes ((array!49408 0))(
  ( (array!49409 (arr!23731 (Array (_ BitVec 32) (_ BitVec 64))) (size!24172 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49408)

(declare-datatypes ((List!16910 0))(
  ( (Nil!16907) (Cons!16906 (h!18037 (_ BitVec 64)) (t!23675 List!16910)) )
))
(declare-fun arrayNoDuplicates!0 (array!49408 (_ BitVec 32) List!16910) Bool)

(assert (=> b!860458 (= res!584892 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16907))))

(declare-fun b!860459 () Bool)

(declare-fun res!584887 () Bool)

(assert (=> b!860459 (=> (not res!584887) (not e!479499))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860459 (= res!584887 (validKeyInArray!0 k!854))))

(declare-fun b!860460 () Bool)

(declare-fun e!479497 () Bool)

(declare-fun e!479491 () Bool)

(declare-fun mapRes!26540 () Bool)

(assert (=> b!860460 (= e!479497 (and e!479491 mapRes!26540))))

(declare-fun condMapEmpty!26540 () Bool)

(declare-datatypes ((V!27217 0))(
  ( (V!27218 (val!8361 Int)) )
))
(declare-datatypes ((ValueCell!7874 0))(
  ( (ValueCellFull!7874 (v!10782 V!27217)) (EmptyCell!7874) )
))
(declare-datatypes ((array!49410 0))(
  ( (array!49411 (arr!23732 (Array (_ BitVec 32) ValueCell!7874)) (size!24173 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49410)

(declare-fun mapDefault!26540 () ValueCell!7874)

