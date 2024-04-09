; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20182 () Bool)

(assert start!20182)

(declare-fun b_free!4829 () Bool)

(declare-fun b_next!4829 () Bool)

(assert (=> start!20182 (= b_free!4829 (not b_next!4829))))

(declare-fun tp!17518 () Bool)

(declare-fun b_and!11593 () Bool)

(assert (=> start!20182 (= tp!17518 b_and!11593)))

(declare-fun b!197940 () Bool)

(declare-fun res!93768 () Bool)

(declare-fun e!130176 () Bool)

(assert (=> b!197940 (=> (not res!93768) (not e!130176))))

(declare-datatypes ((array!8620 0))(
  ( (array!8621 (arr!4060 (Array (_ BitVec 32) (_ BitVec 64))) (size!4385 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8620)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!5893 0))(
  ( (V!5894 (val!2387 Int)) )
))
(declare-datatypes ((ValueCell!1999 0))(
  ( (ValueCellFull!1999 (v!4353 V!5893)) (EmptyCell!1999) )
))
(declare-datatypes ((array!8622 0))(
  ( (array!8623 (arr!4061 (Array (_ BitVec 32) ValueCell!1999)) (size!4386 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8622)

(assert (=> b!197940 (= res!93768 (and (= (size!4386 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4385 _keys!825) (size!4386 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197941 () Bool)

(declare-fun res!93764 () Bool)

(assert (=> b!197941 (=> (not res!93764) (not e!130176))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197941 (= res!93764 (= (select (arr!4060 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!8096 () Bool)

(declare-fun mapRes!8096 () Bool)

(assert (=> mapIsEmpty!8096 mapRes!8096))

(declare-fun b!197943 () Bool)

(declare-fun res!93766 () Bool)

(assert (=> b!197943 (=> (not res!93766) (not e!130176))))

(assert (=> b!197943 (= res!93766 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4385 _keys!825))))))

(declare-fun b!197944 () Bool)

(assert (=> b!197944 (= e!130176 false)))

(declare-datatypes ((tuple2!3618 0))(
  ( (tuple2!3619 (_1!1819 (_ BitVec 64)) (_2!1819 V!5893)) )
))
(declare-datatypes ((List!2556 0))(
  ( (Nil!2553) (Cons!2552 (h!3194 tuple2!3618) (t!7495 List!2556)) )
))
(declare-datatypes ((ListLongMap!2545 0))(
  ( (ListLongMap!2546 (toList!1288 List!2556)) )
))
(declare-fun lt!97848 () ListLongMap!2545)

(declare-fun v!520 () V!5893)

(declare-fun zeroValue!615 () V!5893)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5893)

(declare-fun getCurrentListMapNoExtraKeys!245 (array!8620 array!8622 (_ BitVec 32) (_ BitVec 32) V!5893 V!5893 (_ BitVec 32) Int) ListLongMap!2545)

(assert (=> b!197944 (= lt!97848 (getCurrentListMapNoExtraKeys!245 _keys!825 (array!8623 (store (arr!4061 _values!649) i!601 (ValueCellFull!1999 v!520)) (size!4386 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97849 () ListLongMap!2545)

(assert (=> b!197944 (= lt!97849 (getCurrentListMapNoExtraKeys!245 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197945 () Bool)

(declare-fun res!93765 () Bool)

(assert (=> b!197945 (=> (not res!93765) (not e!130176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197945 (= res!93765 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8096 () Bool)

(declare-fun tp!17519 () Bool)

(declare-fun e!130179 () Bool)

(assert (=> mapNonEmpty!8096 (= mapRes!8096 (and tp!17519 e!130179))))

(declare-fun mapRest!8096 () (Array (_ BitVec 32) ValueCell!1999))

(declare-fun mapValue!8096 () ValueCell!1999)

(declare-fun mapKey!8096 () (_ BitVec 32))

(assert (=> mapNonEmpty!8096 (= (arr!4061 _values!649) (store mapRest!8096 mapKey!8096 mapValue!8096))))

(declare-fun b!197946 () Bool)

(declare-fun res!93767 () Bool)

(assert (=> b!197946 (=> (not res!93767) (not e!130176))))

(declare-datatypes ((List!2557 0))(
  ( (Nil!2554) (Cons!2553 (h!3195 (_ BitVec 64)) (t!7496 List!2557)) )
))
(declare-fun arrayNoDuplicates!0 (array!8620 (_ BitVec 32) List!2557) Bool)

(assert (=> b!197946 (= res!93767 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2554))))

(declare-fun b!197947 () Bool)

(declare-fun e!130177 () Bool)

(declare-fun e!130180 () Bool)

(assert (=> b!197947 (= e!130177 (and e!130180 mapRes!8096))))

(declare-fun condMapEmpty!8096 () Bool)

(declare-fun mapDefault!8096 () ValueCell!1999)

