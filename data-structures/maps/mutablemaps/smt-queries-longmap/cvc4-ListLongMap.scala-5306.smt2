; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71084 () Bool)

(assert start!71084)

(declare-fun b_free!13247 () Bool)

(declare-fun b_next!13247 () Bool)

(assert (=> start!71084 (= b_free!13247 (not b_next!13247))))

(declare-fun tp!46497 () Bool)

(declare-fun b_and!22179 () Bool)

(assert (=> start!71084 (= tp!46497 b_and!22179)))

(declare-fun b!825009 () Bool)

(declare-fun e!459162 () Bool)

(declare-fun tp_is_empty!14957 () Bool)

(assert (=> b!825009 (= e!459162 tp_is_empty!14957)))

(declare-fun b!825010 () Bool)

(declare-fun e!459161 () Bool)

(assert (=> b!825010 (= e!459161 true)))

(declare-datatypes ((V!24943 0))(
  ( (V!24944 (val!7526 Int)) )
))
(declare-datatypes ((tuple2!9960 0))(
  ( (tuple2!9961 (_1!4990 (_ BitVec 64)) (_2!4990 V!24943)) )
))
(declare-fun lt!372250 () tuple2!9960)

(declare-datatypes ((List!15807 0))(
  ( (Nil!15804) (Cons!15803 (h!16932 tuple2!9960) (t!22160 List!15807)) )
))
(declare-datatypes ((ListLongMap!8797 0))(
  ( (ListLongMap!8798 (toList!4414 List!15807)) )
))
(declare-fun lt!372243 () ListLongMap!8797)

(declare-fun lt!372238 () ListLongMap!8797)

(declare-fun lt!372241 () tuple2!9960)

(declare-fun +!1876 (ListLongMap!8797 tuple2!9960) ListLongMap!8797)

(assert (=> b!825010 (= lt!372243 (+!1876 (+!1876 lt!372238 lt!372241) lt!372250))))

(declare-fun lt!372239 () ListLongMap!8797)

(declare-fun lt!372249 () ListLongMap!8797)

(declare-fun lt!372244 () ListLongMap!8797)

(assert (=> b!825010 (and (= lt!372239 lt!372249) (= lt!372244 lt!372249) (= lt!372244 lt!372239))))

(declare-fun lt!372248 () ListLongMap!8797)

(assert (=> b!825010 (= lt!372249 (+!1876 lt!372248 lt!372241))))

(declare-fun lt!372242 () ListLongMap!8797)

(assert (=> b!825010 (= lt!372239 (+!1876 lt!372242 lt!372241))))

(declare-datatypes ((Unit!28269 0))(
  ( (Unit!28270) )
))
(declare-fun lt!372247 () Unit!28269)

(declare-fun zeroValueBefore!34 () V!24943)

(declare-fun zeroValueAfter!34 () V!24943)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!204 (ListLongMap!8797 (_ BitVec 64) V!24943 V!24943) Unit!28269)

(assert (=> b!825010 (= lt!372247 (addSameAsAddTwiceSameKeyDiffValues!204 lt!372242 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459164 () Bool)

(assert (=> b!825010 e!459164))

(declare-fun res!562523 () Bool)

(assert (=> b!825010 (=> (not res!562523) (not e!459164))))

(declare-fun lt!372245 () ListLongMap!8797)

(assert (=> b!825010 (= res!562523 (= lt!372245 lt!372248))))

(declare-fun lt!372251 () tuple2!9960)

(assert (=> b!825010 (= lt!372248 (+!1876 lt!372242 lt!372251))))

(assert (=> b!825010 (= lt!372242 (+!1876 lt!372238 lt!372250))))

(assert (=> b!825010 (= lt!372241 (tuple2!9961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459165 () Bool)

(assert (=> b!825010 e!459165))

(declare-fun res!562519 () Bool)

(assert (=> b!825010 (=> (not res!562519) (not e!459165))))

(assert (=> b!825010 (= res!562519 (= lt!372245 (+!1876 (+!1876 lt!372238 lt!372251) lt!372250)))))

(declare-fun minValue!754 () V!24943)

(assert (=> b!825010 (= lt!372250 (tuple2!9961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825010 (= lt!372251 (tuple2!9961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46062 0))(
  ( (array!46063 (arr!22073 (Array (_ BitVec 32) (_ BitVec 64))) (size!22494 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46062)

(declare-datatypes ((ValueCell!7063 0))(
  ( (ValueCellFull!7063 (v!9955 V!24943)) (EmptyCell!7063) )
))
(declare-datatypes ((array!46064 0))(
  ( (array!46065 (arr!22074 (Array (_ BitVec 32) ValueCell!7063)) (size!22495 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46064)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2526 (array!46062 array!46064 (_ BitVec 32) (_ BitVec 32) V!24943 V!24943 (_ BitVec 32) Int) ListLongMap!8797)

(assert (=> b!825010 (= lt!372244 (getCurrentListMap!2526 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825010 (= lt!372245 (getCurrentListMap!2526 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24058 () Bool)

(declare-fun mapRes!24058 () Bool)

(assert (=> mapIsEmpty!24058 mapRes!24058))

(declare-fun b!825011 () Bool)

(declare-fun lt!372240 () ListLongMap!8797)

(assert (=> b!825011 (= e!459164 (= lt!372244 (+!1876 (+!1876 lt!372240 lt!372250) lt!372241)))))

(declare-fun b!825012 () Bool)

(declare-fun e!459166 () Bool)

(declare-fun e!459163 () Bool)

(assert (=> b!825012 (= e!459166 (and e!459163 mapRes!24058))))

(declare-fun condMapEmpty!24058 () Bool)

(declare-fun mapDefault!24058 () ValueCell!7063)

