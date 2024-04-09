; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73268 () Bool)

(assert start!73268)

(declare-fun b_free!14155 () Bool)

(declare-fun b_next!14155 () Bool)

(assert (=> start!73268 (= b_free!14155 (not b_next!14155))))

(declare-fun tp!49969 () Bool)

(declare-fun b_and!23487 () Bool)

(assert (=> start!73268 (= tp!49969 b_and!23487)))

(declare-fun b!853647 () Bool)

(declare-fun res!579866 () Bool)

(declare-fun e!476075 () Bool)

(assert (=> b!853647 (=> (not res!579866) (not e!476075))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48764 0))(
  ( (array!48765 (arr!23409 (Array (_ BitVec 32) (_ BitVec 64))) (size!23850 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48764)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!853647 (= res!579866 (and (= (select (arr!23409 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!853648 () Bool)

(declare-fun res!579864 () Bool)

(assert (=> b!853648 (=> (not res!579864) (not e!476075))))

(assert (=> b!853648 (= res!579864 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23850 _keys!868))))))

(declare-fun b!853649 () Bool)

(declare-datatypes ((V!26769 0))(
  ( (V!26770 (val!8193 Int)) )
))
(declare-fun v!557 () V!26769)

(declare-datatypes ((tuple2!10782 0))(
  ( (tuple2!10783 (_1!5401 (_ BitVec 64)) (_2!5401 V!26769)) )
))
(declare-datatypes ((List!16659 0))(
  ( (Nil!16656) (Cons!16655 (h!17786 tuple2!10782) (t!23268 List!16659)) )
))
(declare-datatypes ((ListLongMap!9565 0))(
  ( (ListLongMap!9566 (toList!4798 List!16659)) )
))
(declare-fun call!38320 () ListLongMap!9565)

(declare-fun e!476072 () Bool)

(declare-fun call!38321 () ListLongMap!9565)

(declare-fun +!2137 (ListLongMap!9565 tuple2!10782) ListLongMap!9565)

(assert (=> b!853649 (= e!476072 (= call!38321 (+!2137 call!38320 (tuple2!10783 k!854 v!557))))))

(declare-fun b!853650 () Bool)

(declare-fun res!579863 () Bool)

(assert (=> b!853650 (=> (not res!579863) (not e!476075))))

(declare-datatypes ((List!16660 0))(
  ( (Nil!16657) (Cons!16656 (h!17787 (_ BitVec 64)) (t!23269 List!16660)) )
))
(declare-fun arrayNoDuplicates!0 (array!48764 (_ BitVec 32) List!16660) Bool)

(assert (=> b!853650 (= res!579863 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16657))))

(declare-fun b!853651 () Bool)

(declare-fun e!476076 () Bool)

(declare-fun e!476069 () Bool)

(declare-fun mapRes!26036 () Bool)

(assert (=> b!853651 (= e!476076 (and e!476069 mapRes!26036))))

(declare-fun condMapEmpty!26036 () Bool)

(declare-datatypes ((ValueCell!7706 0))(
  ( (ValueCellFull!7706 (v!10614 V!26769)) (EmptyCell!7706) )
))
(declare-datatypes ((array!48766 0))(
  ( (array!48767 (arr!23410 (Array (_ BitVec 32) ValueCell!7706)) (size!23851 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48766)

(declare-fun mapDefault!26036 () ValueCell!7706)

