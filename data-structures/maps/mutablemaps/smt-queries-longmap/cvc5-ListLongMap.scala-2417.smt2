; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38238 () Bool)

(assert start!38238)

(declare-fun b_free!9067 () Bool)

(declare-fun b_next!9067 () Bool)

(assert (=> start!38238 (= b_free!9067 (not b_next!9067))))

(declare-fun tp!31989 () Bool)

(declare-fun b_and!16471 () Bool)

(assert (=> start!38238 (= tp!31989 b_and!16471)))

(declare-fun b!394170 () Bool)

(declare-fun res!225975 () Bool)

(declare-fun e!238618 () Bool)

(assert (=> b!394170 (=> (not res!225975) (not e!238618))))

(declare-datatypes ((array!23363 0))(
  ( (array!23364 (arr!11135 (Array (_ BitVec 32) (_ BitVec 64))) (size!11487 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23363)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23363 (_ BitVec 32)) Bool)

(assert (=> b!394170 (= res!225975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!394171 () Bool)

(declare-fun res!225981 () Bool)

(assert (=> b!394171 (=> (not res!225981) (not e!238618))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!394171 (= res!225981 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11487 _keys!658))))))

(declare-fun b!394172 () Bool)

(declare-fun e!238623 () Bool)

(declare-fun e!238617 () Bool)

(assert (=> b!394172 (= e!238623 e!238617)))

(declare-fun res!225974 () Bool)

(assert (=> b!394172 (=> res!225974 e!238617)))

(declare-datatypes ((V!14091 0))(
  ( (V!14092 (val!4914 Int)) )
))
(declare-datatypes ((tuple2!6564 0))(
  ( (tuple2!6565 (_1!3292 (_ BitVec 64)) (_2!3292 V!14091)) )
))
(declare-datatypes ((List!6448 0))(
  ( (Nil!6445) (Cons!6444 (h!7300 tuple2!6564) (t!11630 List!6448)) )
))
(declare-datatypes ((ListLongMap!5491 0))(
  ( (ListLongMap!5492 (toList!2761 List!6448)) )
))
(declare-fun lt!186825 () ListLongMap!5491)

(declare-fun lt!186824 () tuple2!6564)

(declare-fun lt!186827 () ListLongMap!5491)

(declare-fun +!1059 (ListLongMap!5491 tuple2!6564) ListLongMap!5491)

(assert (=> b!394172 (= res!225974 (not (= (+!1059 lt!186825 lt!186824) lt!186827)))))

(declare-fun lt!186829 () ListLongMap!5491)

(assert (=> b!394172 (= lt!186827 lt!186829)))

(declare-fun b!394173 () Bool)

(declare-fun e!238619 () Bool)

(declare-fun e!238622 () Bool)

(declare-fun mapRes!16209 () Bool)

(assert (=> b!394173 (= e!238619 (and e!238622 mapRes!16209))))

(declare-fun condMapEmpty!16209 () Bool)

(declare-datatypes ((ValueCell!4526 0))(
  ( (ValueCellFull!4526 (v!7155 V!14091)) (EmptyCell!4526) )
))
(declare-datatypes ((array!23365 0))(
  ( (array!23366 (arr!11136 (Array (_ BitVec 32) ValueCell!4526)) (size!11488 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23365)

(declare-fun mapDefault!16209 () ValueCell!4526)

