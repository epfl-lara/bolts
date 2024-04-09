; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84686 () Bool)

(assert start!84686)

(declare-fun b_free!20069 () Bool)

(declare-fun b_next!20069 () Bool)

(assert (=> start!84686 (= b_free!20069 (not b_next!20069))))

(declare-fun tp!70002 () Bool)

(declare-fun b_and!32227 () Bool)

(assert (=> start!84686 (= tp!70002 b_and!32227)))

(declare-fun mapIsEmpty!36976 () Bool)

(declare-fun mapRes!36976 () Bool)

(assert (=> mapIsEmpty!36976 mapRes!36976))

(declare-fun b!989910 () Bool)

(declare-fun res!662055 () Bool)

(declare-fun e!558216 () Bool)

(assert (=> b!989910 (=> (not res!662055) (not e!558216))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!989910 (= res!662055 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989911 () Bool)

(declare-fun res!662057 () Bool)

(assert (=> b!989911 (=> (not res!662057) (not e!558216))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62519 0))(
  ( (array!62520 (arr!30107 (Array (_ BitVec 32) (_ BitVec 64))) (size!30587 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62519)

(assert (=> b!989911 (= res!662057 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30587 _keys!1544))))))

(declare-fun b!989912 () Bool)

(declare-fun e!558218 () Bool)

(assert (=> b!989912 (= e!558218 (not true))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36029 0))(
  ( (V!36030 (val!11693 Int)) )
))
(declare-fun minValue!1220 () V!36029)

(declare-datatypes ((ValueCell!11161 0))(
  ( (ValueCellFull!11161 (v!14263 V!36029)) (EmptyCell!11161) )
))
(declare-datatypes ((array!62521 0))(
  ( (array!62522 (arr!30108 (Array (_ BitVec 32) ValueCell!11161)) (size!30588 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62521)

(declare-fun zeroValue!1220 () V!36029)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!15000 0))(
  ( (tuple2!15001 (_1!7510 (_ BitVec 64)) (_2!7510 V!36029)) )
))
(declare-datatypes ((List!20950 0))(
  ( (Nil!20947) (Cons!20946 (h!22108 tuple2!15000) (t!29923 List!20950)) )
))
(declare-datatypes ((ListLongMap!13711 0))(
  ( (ListLongMap!13712 (toList!6871 List!20950)) )
))
(declare-fun lt!439150 () ListLongMap!13711)

(declare-fun getCurrentListMap!3880 (array!62519 array!62521 (_ BitVec 32) (_ BitVec 32) V!36029 V!36029 (_ BitVec 32) Int) ListLongMap!13711)

(assert (=> b!989912 (= lt!439150 (getCurrentListMap!3880 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439147 () ListLongMap!13711)

(declare-fun lt!439149 () tuple2!15000)

(declare-fun lt!439151 () tuple2!15000)

(declare-fun +!3049 (ListLongMap!13711 tuple2!15000) ListLongMap!13711)

(assert (=> b!989912 (= (+!3049 (+!3049 lt!439147 lt!439149) lt!439151) (+!3049 (+!3049 lt!439147 lt!439151) lt!439149))))

(declare-fun lt!439148 () V!36029)

(assert (=> b!989912 (= lt!439151 (tuple2!15001 (select (arr!30107 _keys!1544) from!1932) lt!439148))))

(assert (=> b!989912 (= lt!439149 (tuple2!15001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32804 0))(
  ( (Unit!32805) )
))
(declare-fun lt!439146 () Unit!32804)

(declare-fun addCommutativeForDiffKeys!703 (ListLongMap!13711 (_ BitVec 64) V!36029 (_ BitVec 64) V!36029) Unit!32804)

(assert (=> b!989912 (= lt!439146 (addCommutativeForDiffKeys!703 lt!439147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30107 _keys!1544) from!1932) lt!439148))))

(declare-fun mapNonEmpty!36976 () Bool)

(declare-fun tp!70003 () Bool)

(declare-fun e!558217 () Bool)

(assert (=> mapNonEmpty!36976 (= mapRes!36976 (and tp!70003 e!558217))))

(declare-fun mapValue!36976 () ValueCell!11161)

(declare-fun mapRest!36976 () (Array (_ BitVec 32) ValueCell!11161))

(declare-fun mapKey!36976 () (_ BitVec 32))

(assert (=> mapNonEmpty!36976 (= (arr!30108 _values!1278) (store mapRest!36976 mapKey!36976 mapValue!36976))))

(declare-fun b!989913 () Bool)

(declare-fun res!662056 () Bool)

(assert (=> b!989913 (=> (not res!662056) (not e!558216))))

(assert (=> b!989913 (= res!662056 (and (= (size!30588 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30587 _keys!1544) (size!30588 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989914 () Bool)

(declare-fun res!662059 () Bool)

(assert (=> b!989914 (=> (not res!662059) (not e!558216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62519 (_ BitVec 32)) Bool)

(assert (=> b!989914 (= res!662059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989915 () Bool)

(declare-fun res!662060 () Bool)

(assert (=> b!989915 (=> (not res!662060) (not e!558216))))

(declare-datatypes ((List!20951 0))(
  ( (Nil!20948) (Cons!20947 (h!22109 (_ BitVec 64)) (t!29924 List!20951)) )
))
(declare-fun arrayNoDuplicates!0 (array!62519 (_ BitVec 32) List!20951) Bool)

(assert (=> b!989915 (= res!662060 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20948))))

(declare-fun res!662058 () Bool)

(assert (=> start!84686 (=> (not res!662058) (not e!558216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84686 (= res!662058 (validMask!0 mask!1948))))

(assert (=> start!84686 e!558216))

(assert (=> start!84686 true))

(declare-fun tp_is_empty!23285 () Bool)

(assert (=> start!84686 tp_is_empty!23285))

(declare-fun e!558221 () Bool)

(declare-fun array_inv!23117 (array!62521) Bool)

(assert (=> start!84686 (and (array_inv!23117 _values!1278) e!558221)))

(assert (=> start!84686 tp!70002))

(declare-fun array_inv!23118 (array!62519) Bool)

(assert (=> start!84686 (array_inv!23118 _keys!1544)))

(declare-fun b!989916 () Bool)

(assert (=> b!989916 (= e!558217 tp_is_empty!23285)))

(declare-fun b!989917 () Bool)

(assert (=> b!989917 (= e!558216 e!558218)))

(declare-fun res!662061 () Bool)

(assert (=> b!989917 (=> (not res!662061) (not e!558218))))

(assert (=> b!989917 (= res!662061 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30107 _keys!1544) from!1932))))))

(declare-fun get!15645 (ValueCell!11161 V!36029) V!36029)

(declare-fun dynLambda!1876 (Int (_ BitVec 64)) V!36029)

(assert (=> b!989917 (= lt!439148 (get!15645 (select (arr!30108 _values!1278) from!1932) (dynLambda!1876 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!3520 (array!62519 array!62521 (_ BitVec 32) (_ BitVec 32) V!36029 V!36029 (_ BitVec 32) Int) ListLongMap!13711)

(assert (=> b!989917 (= lt!439147 (getCurrentListMapNoExtraKeys!3520 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989918 () Bool)

(declare-fun res!662062 () Bool)

(assert (=> b!989918 (=> (not res!662062) (not e!558216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989918 (= res!662062 (validKeyInArray!0 (select (arr!30107 _keys!1544) from!1932)))))

(declare-fun b!989919 () Bool)

(declare-fun e!558219 () Bool)

(assert (=> b!989919 (= e!558221 (and e!558219 mapRes!36976))))

(declare-fun condMapEmpty!36976 () Bool)

(declare-fun mapDefault!36976 () ValueCell!11161)

