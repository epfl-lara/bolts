; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131950 () Bool)

(assert start!131950)

(declare-fun b_free!31631 () Bool)

(declare-fun b_next!31631 () Bool)

(assert (=> start!131950 (= b_free!31631 (not b_next!31631))))

(declare-fun tp!111145 () Bool)

(declare-fun b_and!51051 () Bool)

(assert (=> start!131950 (= tp!111145 b_and!51051)))

(declare-fun mapNonEmpty!58564 () Bool)

(declare-fun mapRes!58564 () Bool)

(declare-fun tp!111146 () Bool)

(declare-fun e!859729 () Bool)

(assert (=> mapNonEmpty!58564 (= mapRes!58564 (and tp!111146 e!859729))))

(declare-datatypes ((V!58985 0))(
  ( (V!58986 (val!19031 Int)) )
))
(declare-datatypes ((ValueCell!18043 0))(
  ( (ValueCellFull!18043 (v!21829 V!58985)) (EmptyCell!18043) )
))
(declare-fun mapValue!58564 () ValueCell!18043)

(declare-datatypes ((array!102987 0))(
  ( (array!102988 (arr!49691 (Array (_ BitVec 32) ValueCell!18043)) (size!50242 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102987)

(declare-fun mapRest!58564 () (Array (_ BitVec 32) ValueCell!18043))

(declare-fun mapKey!58564 () (_ BitVec 32))

(assert (=> mapNonEmpty!58564 (= (arr!49691 _values!470) (store mapRest!58564 mapKey!58564 mapValue!58564))))

(declare-fun res!1059503 () Bool)

(declare-fun e!859728 () Bool)

(assert (=> start!131950 (=> (not res!1059503) (not e!859728))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131950 (= res!1059503 (validMask!0 mask!926))))

(assert (=> start!131950 e!859728))

(declare-datatypes ((array!102989 0))(
  ( (array!102990 (arr!49692 (Array (_ BitVec 32) (_ BitVec 64))) (size!50243 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102989)

(declare-fun array_inv!38575 (array!102989) Bool)

(assert (=> start!131950 (array_inv!38575 _keys!618)))

(declare-fun tp_is_empty!37907 () Bool)

(assert (=> start!131950 tp_is_empty!37907))

(assert (=> start!131950 true))

(assert (=> start!131950 tp!111145))

(declare-fun e!859722 () Bool)

(declare-fun array_inv!38576 (array!102987) Bool)

(assert (=> start!131950 (and (array_inv!38576 _values!470) e!859722)))

(declare-fun b!1544514 () Bool)

(declare-fun res!1059502 () Bool)

(assert (=> b!1544514 (=> (not res!1059502) (not e!859728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102989 (_ BitVec 32)) Bool)

(assert (=> b!1544514 (= res!1059502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544515 () Bool)

(declare-datatypes ((tuple2!24590 0))(
  ( (tuple2!24591 (_1!12305 (_ BitVec 64)) (_2!12305 V!58985)) )
))
(declare-datatypes ((List!36109 0))(
  ( (Nil!36106) (Cons!36105 (h!37551 tuple2!24590) (t!50810 List!36109)) )
))
(declare-datatypes ((ListLongMap!22211 0))(
  ( (ListLongMap!22212 (toList!11121 List!36109)) )
))
(declare-fun e!859727 () ListLongMap!22211)

(declare-fun e!859724 () ListLongMap!22211)

(assert (=> b!1544515 (= e!859727 e!859724)))

(declare-fun c!141404 () Bool)

(declare-fun lt!666089 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544515 (= c!141404 (and (not lt!666089) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!68954 () Bool)

(declare-fun call!68958 () ListLongMap!22211)

(declare-fun call!68961 () ListLongMap!22211)

(assert (=> bm!68954 (= call!68958 call!68961)))

(declare-fun call!68959 () ListLongMap!22211)

(declare-fun zeroValue!436 () V!58985)

(declare-fun call!68957 () ListLongMap!22211)

(declare-fun minValue!436 () V!58985)

(declare-fun c!141402 () Bool)

(declare-fun bm!68955 () Bool)

(declare-fun +!4855 (ListLongMap!22211 tuple2!24590) ListLongMap!22211)

(assert (=> bm!68955 (= call!68959 (+!4855 (ite c!141402 call!68957 (ite c!141404 call!68961 call!68958)) (ite (or c!141402 c!141404) (tuple2!24591 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24591 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544516 () Bool)

(declare-fun res!1059499 () Bool)

(assert (=> b!1544516 (=> (not res!1059499) (not e!859728))))

(declare-datatypes ((List!36110 0))(
  ( (Nil!36107) (Cons!36106 (h!37552 (_ BitVec 64)) (t!50811 List!36110)) )
))
(declare-fun arrayNoDuplicates!0 (array!102989 (_ BitVec 32) List!36110) Bool)

(assert (=> b!1544516 (= res!1059499 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36107))))

(declare-fun b!1544517 () Bool)

(assert (=> b!1544517 (= e!859728 false)))

(declare-fun lt!666088 () ListLongMap!22211)

(assert (=> b!1544517 (= lt!666088 e!859727)))

(assert (=> b!1544517 (= c!141402 (and (not lt!666089) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544517 (= lt!666089 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68956 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6571 (array!102989 array!102987 (_ BitVec 32) (_ BitVec 32) V!58985 V!58985 (_ BitVec 32) Int) ListLongMap!22211)

(assert (=> bm!68956 (= call!68957 (getCurrentListMapNoExtraKeys!6571 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544518 () Bool)

(declare-fun e!859725 () Bool)

(assert (=> b!1544518 (= e!859722 (and e!859725 mapRes!58564))))

(declare-fun condMapEmpty!58564 () Bool)

(declare-fun mapDefault!58564 () ValueCell!18043)

