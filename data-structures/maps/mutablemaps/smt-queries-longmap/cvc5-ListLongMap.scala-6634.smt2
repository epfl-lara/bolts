; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83804 () Bool)

(assert start!83804)

(declare-fun b_free!19585 () Bool)

(declare-fun b_next!19585 () Bool)

(assert (=> start!83804 (= b_free!19585 (not b_next!19585))))

(declare-fun tp!68198 () Bool)

(declare-fun b_and!31277 () Bool)

(assert (=> start!83804 (= tp!68198 b_and!31277)))

(declare-fun b!978183 () Bool)

(declare-fun res!654741 () Bool)

(declare-fun e!551516 () Bool)

(assert (=> b!978183 (=> (not res!654741) (not e!551516))))

(declare-datatypes ((array!61175 0))(
  ( (array!61176 (arr!29441 (Array (_ BitVec 32) (_ BitVec 64))) (size!29921 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61175)

(declare-datatypes ((List!20537 0))(
  ( (Nil!20534) (Cons!20533 (h!21695 (_ BitVec 64)) (t!29086 List!20537)) )
))
(declare-fun arrayNoDuplicates!0 (array!61175 (_ BitVec 32) List!20537) Bool)

(assert (=> b!978183 (= res!654741 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20534))))

(declare-fun mapNonEmpty!35897 () Bool)

(declare-fun mapRes!35897 () Bool)

(declare-fun tp!68197 () Bool)

(declare-fun e!551515 () Bool)

(assert (=> mapNonEmpty!35897 (= mapRes!35897 (and tp!68197 e!551515))))

(declare-datatypes ((V!35089 0))(
  ( (V!35090 (val!11340 Int)) )
))
(declare-datatypes ((ValueCell!10808 0))(
  ( (ValueCellFull!10808 (v!13902 V!35089)) (EmptyCell!10808) )
))
(declare-datatypes ((array!61177 0))(
  ( (array!61178 (arr!29442 (Array (_ BitVec 32) ValueCell!10808)) (size!29922 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61177)

(declare-fun mapRest!35897 () (Array (_ BitVec 32) ValueCell!10808))

(declare-fun mapKey!35897 () (_ BitVec 32))

(declare-fun mapValue!35897 () ValueCell!10808)

(assert (=> mapNonEmpty!35897 (= (arr!29442 _values!1278) (store mapRest!35897 mapKey!35897 mapValue!35897))))

(declare-fun b!978184 () Bool)

(declare-fun tp_is_empty!22579 () Bool)

(assert (=> b!978184 (= e!551515 tp_is_empty!22579)))

(declare-fun res!654740 () Bool)

(assert (=> start!83804 (=> (not res!654740) (not e!551516))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83804 (= res!654740 (validMask!0 mask!1948))))

(assert (=> start!83804 e!551516))

(assert (=> start!83804 true))

(assert (=> start!83804 tp_is_empty!22579))

(declare-fun e!551517 () Bool)

(declare-fun array_inv!22657 (array!61177) Bool)

(assert (=> start!83804 (and (array_inv!22657 _values!1278) e!551517)))

(assert (=> start!83804 tp!68198))

(declare-fun array_inv!22658 (array!61175) Bool)

(assert (=> start!83804 (array_inv!22658 _keys!1544)))

(declare-fun mapIsEmpty!35897 () Bool)

(assert (=> mapIsEmpty!35897 mapRes!35897))

(declare-fun b!978185 () Bool)

(declare-fun res!654738 () Bool)

(assert (=> b!978185 (=> (not res!654738) (not e!551516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61175 (_ BitVec 32)) Bool)

(assert (=> b!978185 (= res!654738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978186 () Bool)

(assert (=> b!978186 (= e!551516 (not true))))

(declare-datatypes ((tuple2!14638 0))(
  ( (tuple2!14639 (_1!7329 (_ BitVec 64)) (_2!7329 V!35089)) )
))
(declare-datatypes ((List!20538 0))(
  ( (Nil!20535) (Cons!20534 (h!21696 tuple2!14638) (t!29087 List!20538)) )
))
(declare-datatypes ((ListLongMap!13349 0))(
  ( (ListLongMap!13350 (toList!6690 List!20538)) )
))
(declare-fun lt!433669 () ListLongMap!13349)

(declare-fun lt!433666 () tuple2!14638)

(declare-fun lt!433667 () tuple2!14638)

(declare-fun +!2896 (ListLongMap!13349 tuple2!14638) ListLongMap!13349)

(assert (=> b!978186 (= (+!2896 (+!2896 lt!433669 lt!433666) lt!433667) (+!2896 (+!2896 lt!433669 lt!433667) lt!433666))))

(declare-fun lt!433665 () V!35089)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978186 (= lt!433667 (tuple2!14639 (select (arr!29441 _keys!1544) from!1932) lt!433665))))

(declare-fun minValue!1220 () V!35089)

(assert (=> b!978186 (= lt!433666 (tuple2!14639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32467 0))(
  ( (Unit!32468) )
))
(declare-fun lt!433668 () Unit!32467)

(declare-fun addCommutativeForDiffKeys!558 (ListLongMap!13349 (_ BitVec 64) V!35089 (_ BitVec 64) V!35089) Unit!32467)

(assert (=> b!978186 (= lt!433668 (addCommutativeForDiffKeys!558 lt!433669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29441 _keys!1544) from!1932) lt!433665))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15259 (ValueCell!10808 V!35089) V!35089)

(declare-fun dynLambda!1732 (Int (_ BitVec 64)) V!35089)

(assert (=> b!978186 (= lt!433665 (get!15259 (select (arr!29442 _values!1278) from!1932) (dynLambda!1732 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35089)

(declare-fun getCurrentListMapNoExtraKeys!3357 (array!61175 array!61177 (_ BitVec 32) (_ BitVec 32) V!35089 V!35089 (_ BitVec 32) Int) ListLongMap!13349)

(assert (=> b!978186 (= lt!433669 (+!2896 (getCurrentListMapNoExtraKeys!3357 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978187 () Bool)

(declare-fun e!551518 () Bool)

(assert (=> b!978187 (= e!551517 (and e!551518 mapRes!35897))))

(declare-fun condMapEmpty!35897 () Bool)

(declare-fun mapDefault!35897 () ValueCell!10808)

