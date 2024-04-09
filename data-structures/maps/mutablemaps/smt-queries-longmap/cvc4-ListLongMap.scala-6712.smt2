; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84276 () Bool)

(assert start!84276)

(declare-fun b_free!19949 () Bool)

(declare-fun b_next!19949 () Bool)

(assert (=> start!84276 (= b_free!19949 (not b_next!19949))))

(declare-fun tp!69452 () Bool)

(declare-fun b_and!31993 () Bool)

(assert (=> start!84276 (= tp!69452 b_and!31993)))

(declare-fun b!985497 () Bool)

(declare-fun res!659575 () Bool)

(declare-fun e!555532 () Bool)

(assert (=> b!985497 (=> (not res!659575) (not e!555532))))

(declare-datatypes ((array!62067 0))(
  ( (array!62068 (arr!29887 (Array (_ BitVec 32) (_ BitVec 64))) (size!30367 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62067)

(declare-datatypes ((List!20830 0))(
  ( (Nil!20827) (Cons!20826 (h!21988 (_ BitVec 64)) (t!29731 List!20830)) )
))
(declare-fun arrayNoDuplicates!0 (array!62067 (_ BitVec 32) List!20830) Bool)

(assert (=> b!985497 (= res!659575 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20827))))

(declare-fun b!985498 () Bool)

(declare-fun e!555534 () Bool)

(assert (=> b!985498 (= e!555532 e!555534)))

(declare-fun res!659577 () Bool)

(assert (=> b!985498 (=> (not res!659577) (not e!555534))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985498 (= res!659577 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29887 _keys!1544) from!1932))))))

(declare-datatypes ((V!35717 0))(
  ( (V!35718 (val!11576 Int)) )
))
(declare-datatypes ((ValueCell!11044 0))(
  ( (ValueCellFull!11044 (v!14138 V!35717)) (EmptyCell!11044) )
))
(declare-datatypes ((array!62069 0))(
  ( (array!62070 (arr!29888 (Array (_ BitVec 32) ValueCell!11044)) (size!30368 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62069)

(declare-fun lt!437278 () V!35717)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15536 (ValueCell!11044 V!35717) V!35717)

(declare-fun dynLambda!1853 (Int (_ BitVec 64)) V!35717)

(assert (=> b!985498 (= lt!437278 (get!15536 (select (arr!29888 _values!1278) from!1932) (dynLambda!1853 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35717)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35717)

(declare-datatypes ((tuple2!14912 0))(
  ( (tuple2!14913 (_1!7466 (_ BitVec 64)) (_2!7466 V!35717)) )
))
(declare-datatypes ((List!20831 0))(
  ( (Nil!20828) (Cons!20827 (h!21989 tuple2!14912) (t!29732 List!20831)) )
))
(declare-datatypes ((ListLongMap!13623 0))(
  ( (ListLongMap!13624 (toList!6827 List!20831)) )
))
(declare-fun lt!437279 () ListLongMap!13623)

(declare-fun getCurrentListMapNoExtraKeys!3482 (array!62067 array!62069 (_ BitVec 32) (_ BitVec 32) V!35717 V!35717 (_ BitVec 32) Int) ListLongMap!13623)

(assert (=> b!985498 (= lt!437279 (getCurrentListMapNoExtraKeys!3482 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985499 () Bool)

(declare-fun res!659576 () Bool)

(assert (=> b!985499 (=> (not res!659576) (not e!555532))))

(assert (=> b!985499 (= res!659576 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985500 () Bool)

(declare-fun res!659578 () Bool)

(assert (=> b!985500 (=> (not res!659578) (not e!555532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985500 (= res!659578 (validKeyInArray!0 (select (arr!29887 _keys!1544) from!1932)))))

(declare-fun b!985501 () Bool)

(declare-fun e!555533 () Bool)

(declare-fun tp_is_empty!23051 () Bool)

(assert (=> b!985501 (= e!555533 tp_is_empty!23051)))

(declare-fun mapIsEmpty!36605 () Bool)

(declare-fun mapRes!36605 () Bool)

(assert (=> mapIsEmpty!36605 mapRes!36605))

(declare-fun res!659574 () Bool)

(assert (=> start!84276 (=> (not res!659574) (not e!555532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84276 (= res!659574 (validMask!0 mask!1948))))

(assert (=> start!84276 e!555532))

(assert (=> start!84276 true))

(assert (=> start!84276 tp_is_empty!23051))

(declare-fun e!555531 () Bool)

(declare-fun array_inv!22967 (array!62069) Bool)

(assert (=> start!84276 (and (array_inv!22967 _values!1278) e!555531)))

(assert (=> start!84276 tp!69452))

(declare-fun array_inv!22968 (array!62067) Bool)

(assert (=> start!84276 (array_inv!22968 _keys!1544)))

(declare-fun b!985502 () Bool)

(declare-fun res!659573 () Bool)

(assert (=> b!985502 (=> (not res!659573) (not e!555532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62067 (_ BitVec 32)) Bool)

(assert (=> b!985502 (= res!659573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985503 () Bool)

(declare-fun e!555536 () Bool)

(assert (=> b!985503 (= e!555536 tp_is_empty!23051)))

(declare-fun b!985504 () Bool)

(declare-fun res!659579 () Bool)

(assert (=> b!985504 (=> (not res!659579) (not e!555532))))

(assert (=> b!985504 (= res!659579 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30367 _keys!1544))))))

(declare-fun mapNonEmpty!36605 () Bool)

(declare-fun tp!69451 () Bool)

(assert (=> mapNonEmpty!36605 (= mapRes!36605 (and tp!69451 e!555533))))

(declare-fun mapRest!36605 () (Array (_ BitVec 32) ValueCell!11044))

(declare-fun mapKey!36605 () (_ BitVec 32))

(declare-fun mapValue!36605 () ValueCell!11044)

(assert (=> mapNonEmpty!36605 (= (arr!29888 _values!1278) (store mapRest!36605 mapKey!36605 mapValue!36605))))

(declare-fun b!985505 () Bool)

(declare-fun res!659580 () Bool)

(assert (=> b!985505 (=> (not res!659580) (not e!555532))))

(assert (=> b!985505 (= res!659580 (and (= (size!30368 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30367 _keys!1544) (size!30368 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985506 () Bool)

(assert (=> b!985506 (= e!555534 (not true))))

(declare-fun lt!437277 () tuple2!14912)

(declare-fun lt!437280 () tuple2!14912)

(declare-fun +!3015 (ListLongMap!13623 tuple2!14912) ListLongMap!13623)

(assert (=> b!985506 (= (+!3015 (+!3015 lt!437279 lt!437277) lt!437280) (+!3015 (+!3015 lt!437279 lt!437280) lt!437277))))

(assert (=> b!985506 (= lt!437280 (tuple2!14913 (select (arr!29887 _keys!1544) from!1932) lt!437278))))

(assert (=> b!985506 (= lt!437277 (tuple2!14913 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32705 0))(
  ( (Unit!32706) )
))
(declare-fun lt!437281 () Unit!32705)

(declare-fun addCommutativeForDiffKeys!677 (ListLongMap!13623 (_ BitVec 64) V!35717 (_ BitVec 64) V!35717) Unit!32705)

(assert (=> b!985506 (= lt!437281 (addCommutativeForDiffKeys!677 lt!437279 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29887 _keys!1544) from!1932) lt!437278))))

(declare-fun b!985507 () Bool)

(assert (=> b!985507 (= e!555531 (and e!555536 mapRes!36605))))

(declare-fun condMapEmpty!36605 () Bool)

(declare-fun mapDefault!36605 () ValueCell!11044)

