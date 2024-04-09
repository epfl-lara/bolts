; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132106 () Bool)

(assert start!132106)

(declare-fun b_free!31787 () Bool)

(declare-fun b_next!31787 () Bool)

(assert (=> start!132106 (= b_free!31787 (not b_next!31787))))

(declare-fun tp!111614 () Bool)

(declare-fun b_and!51207 () Bool)

(assert (=> start!132106 (= tp!111614 b_and!51207)))

(declare-fun b!1548202 () Bool)

(declare-datatypes ((V!59193 0))(
  ( (V!59194 (val!19109 Int)) )
))
(declare-datatypes ((tuple2!24742 0))(
  ( (tuple2!24743 (_1!12381 (_ BitVec 64)) (_2!12381 V!59193)) )
))
(declare-datatypes ((List!36246 0))(
  ( (Nil!36243) (Cons!36242 (h!37688 tuple2!24742) (t!50947 List!36246)) )
))
(declare-datatypes ((ListLongMap!22363 0))(
  ( (ListLongMap!22364 (toList!11197 List!36246)) )
))
(declare-fun e!861802 () ListLongMap!22363)

(declare-fun call!70131 () ListLongMap!22363)

(assert (=> b!1548202 (= e!861802 call!70131)))

(declare-fun b!1548203 () Bool)

(declare-fun e!861805 () Bool)

(declare-fun e!861801 () Bool)

(assert (=> b!1548203 (= e!861805 e!861801)))

(declare-fun res!1061084 () Bool)

(assert (=> b!1548203 (=> (not res!1061084) (not e!861801))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103291 0))(
  ( (array!103292 (arr!49843 (Array (_ BitVec 32) (_ BitVec 64))) (size!50394 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103291)

(assert (=> b!1548203 (= res!1061084 (bvslt from!762 (size!50394 _keys!618)))))

(declare-fun lt!667155 () ListLongMap!22363)

(declare-fun e!861806 () ListLongMap!22363)

(assert (=> b!1548203 (= lt!667155 e!861806)))

(declare-fun c!142105 () Bool)

(declare-fun lt!667154 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1548203 (= c!142105 (and (not lt!667154) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548203 (= lt!667154 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!1061081 () Bool)

(assert (=> start!132106 (=> (not res!1061081) (not e!861805))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132106 (= res!1061081 (validMask!0 mask!926))))

(assert (=> start!132106 e!861805))

(declare-fun array_inv!38685 (array!103291) Bool)

(assert (=> start!132106 (array_inv!38685 _keys!618)))

(declare-fun tp_is_empty!38063 () Bool)

(assert (=> start!132106 tp_is_empty!38063))

(assert (=> start!132106 true))

(assert (=> start!132106 tp!111614))

(declare-datatypes ((ValueCell!18121 0))(
  ( (ValueCellFull!18121 (v!21907 V!59193)) (EmptyCell!18121) )
))
(declare-datatypes ((array!103293 0))(
  ( (array!103294 (arr!49844 (Array (_ BitVec 32) ValueCell!18121)) (size!50395 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103293)

(declare-fun e!861808 () Bool)

(declare-fun array_inv!38686 (array!103293) Bool)

(assert (=> start!132106 (and (array_inv!38686 _values!470) e!861808)))

(declare-fun b!1548204 () Bool)

(declare-fun res!1061087 () Bool)

(assert (=> b!1548204 (=> (not res!1061087) (not e!861801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548204 (= res!1061087 (validKeyInArray!0 (select (arr!49843 _keys!618) from!762)))))

(declare-fun b!1548205 () Bool)

(declare-fun res!1061086 () Bool)

(assert (=> b!1548205 (=> (not res!1061086) (not e!861805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103291 (_ BitVec 32)) Bool)

(assert (=> b!1548205 (= res!1061086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548206 () Bool)

(declare-fun call!70129 () ListLongMap!22363)

(assert (=> b!1548206 (= e!861802 call!70129)))

(declare-fun b!1548207 () Bool)

(declare-fun e!861807 () Bool)

(declare-fun mapRes!58798 () Bool)

(assert (=> b!1548207 (= e!861808 (and e!861807 mapRes!58798))))

(declare-fun condMapEmpty!58798 () Bool)

(declare-fun mapDefault!58798 () ValueCell!18121)

