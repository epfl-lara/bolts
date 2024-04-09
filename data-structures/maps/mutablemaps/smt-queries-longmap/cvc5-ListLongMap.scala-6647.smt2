; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83882 () Bool)

(assert start!83882)

(declare-fun b_free!19663 () Bool)

(declare-fun b_next!19663 () Bool)

(assert (=> start!83882 (= b_free!19663 (not b_next!19663))))

(declare-fun tp!68431 () Bool)

(declare-fun b_and!31433 () Bool)

(assert (=> start!83882 (= tp!68431 b_and!31433)))

(declare-fun mapIsEmpty!36014 () Bool)

(declare-fun mapRes!36014 () Bool)

(assert (=> mapIsEmpty!36014 mapRes!36014))

(declare-fun b!979496 () Bool)

(declare-fun res!655622 () Bool)

(declare-fun e!552168 () Bool)

(assert (=> b!979496 (=> (not res!655622) (not e!552168))))

(declare-datatypes ((array!61327 0))(
  ( (array!61328 (arr!29517 (Array (_ BitVec 32) (_ BitVec 64))) (size!29997 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61327)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979496 (= res!655622 (validKeyInArray!0 (select (arr!29517 _keys!1544) from!1932)))))

(declare-fun b!979497 () Bool)

(declare-fun e!552170 () Bool)

(assert (=> b!979497 (= e!552168 (not e!552170))))

(declare-fun res!655624 () Bool)

(assert (=> b!979497 (=> res!655624 e!552170)))

(assert (=> b!979497 (= res!655624 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29517 _keys!1544) from!1932)))))

(declare-datatypes ((V!35193 0))(
  ( (V!35194 (val!11379 Int)) )
))
(declare-datatypes ((tuple2!14696 0))(
  ( (tuple2!14697 (_1!7358 (_ BitVec 64)) (_2!7358 V!35193)) )
))
(declare-fun lt!434582 () tuple2!14696)

(declare-datatypes ((List!20590 0))(
  ( (Nil!20587) (Cons!20586 (h!21748 tuple2!14696) (t!29217 List!20590)) )
))
(declare-datatypes ((ListLongMap!13407 0))(
  ( (ListLongMap!13408 (toList!6719 List!20590)) )
))
(declare-fun lt!434579 () ListLongMap!13407)

(declare-fun lt!434575 () tuple2!14696)

(declare-fun lt!434576 () ListLongMap!13407)

(declare-fun +!2925 (ListLongMap!13407 tuple2!14696) ListLongMap!13407)

(assert (=> b!979497 (= (+!2925 lt!434576 lt!434575) (+!2925 lt!434579 lt!434582))))

(declare-fun lt!434580 () ListLongMap!13407)

(assert (=> b!979497 (= lt!434579 (+!2925 lt!434580 lt!434575))))

(declare-fun lt!434577 () V!35193)

(assert (=> b!979497 (= lt!434575 (tuple2!14697 (select (arr!29517 _keys!1544) from!1932) lt!434577))))

(assert (=> b!979497 (= lt!434576 (+!2925 lt!434580 lt!434582))))

(declare-fun minValue!1220 () V!35193)

(assert (=> b!979497 (= lt!434582 (tuple2!14697 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32525 0))(
  ( (Unit!32526) )
))
(declare-fun lt!434583 () Unit!32525)

(declare-fun addCommutativeForDiffKeys!587 (ListLongMap!13407 (_ BitVec 64) V!35193 (_ BitVec 64) V!35193) Unit!32525)

(assert (=> b!979497 (= lt!434583 (addCommutativeForDiffKeys!587 lt!434580 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29517 _keys!1544) from!1932) lt!434577))))

(declare-datatypes ((ValueCell!10847 0))(
  ( (ValueCellFull!10847 (v!13941 V!35193)) (EmptyCell!10847) )
))
(declare-datatypes ((array!61329 0))(
  ( (array!61330 (arr!29518 (Array (_ BitVec 32) ValueCell!10847)) (size!29998 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61329)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15313 (ValueCell!10847 V!35193) V!35193)

(declare-fun dynLambda!1760 (Int (_ BitVec 64)) V!35193)

(assert (=> b!979497 (= lt!434577 (get!15313 (select (arr!29518 _values!1278) from!1932) (dynLambda!1760 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434578 () ListLongMap!13407)

(declare-fun lt!434584 () tuple2!14696)

(assert (=> b!979497 (= lt!434580 (+!2925 lt!434578 lt!434584))))

(declare-fun zeroValue!1220 () V!35193)

(assert (=> b!979497 (= lt!434584 (tuple2!14697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3385 (array!61327 array!61329 (_ BitVec 32) (_ BitVec 32) V!35193 V!35193 (_ BitVec 32) Int) ListLongMap!13407)

(assert (=> b!979497 (= lt!434578 (getCurrentListMapNoExtraKeys!3385 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979498 () Bool)

(declare-fun res!655619 () Bool)

(assert (=> b!979498 (=> (not res!655619) (not e!552168))))

(assert (=> b!979498 (= res!655619 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!655625 () Bool)

(assert (=> start!83882 (=> (not res!655625) (not e!552168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83882 (= res!655625 (validMask!0 mask!1948))))

(assert (=> start!83882 e!552168))

(assert (=> start!83882 true))

(declare-fun tp_is_empty!22657 () Bool)

(assert (=> start!83882 tp_is_empty!22657))

(declare-fun e!552166 () Bool)

(declare-fun array_inv!22711 (array!61329) Bool)

(assert (=> start!83882 (and (array_inv!22711 _values!1278) e!552166)))

(assert (=> start!83882 tp!68431))

(declare-fun array_inv!22712 (array!61327) Bool)

(assert (=> start!83882 (array_inv!22712 _keys!1544)))

(declare-fun b!979499 () Bool)

(declare-fun res!655626 () Bool)

(assert (=> b!979499 (=> (not res!655626) (not e!552168))))

(assert (=> b!979499 (= res!655626 (and (= (size!29998 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29997 _keys!1544) (size!29998 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979500 () Bool)

(assert (=> b!979500 (= e!552170 true)))

(assert (=> b!979500 (= lt!434579 (+!2925 (+!2925 lt!434578 lt!434575) lt!434584))))

(declare-fun lt!434581 () Unit!32525)

(assert (=> b!979500 (= lt!434581 (addCommutativeForDiffKeys!587 lt!434578 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29517 _keys!1544) from!1932) lt!434577))))

(declare-fun b!979501 () Bool)

(declare-fun e!552165 () Bool)

(assert (=> b!979501 (= e!552165 tp_is_empty!22657)))

(declare-fun mapNonEmpty!36014 () Bool)

(declare-fun tp!68432 () Bool)

(declare-fun e!552167 () Bool)

(assert (=> mapNonEmpty!36014 (= mapRes!36014 (and tp!68432 e!552167))))

(declare-fun mapKey!36014 () (_ BitVec 32))

(declare-fun mapRest!36014 () (Array (_ BitVec 32) ValueCell!10847))

(declare-fun mapValue!36014 () ValueCell!10847)

(assert (=> mapNonEmpty!36014 (= (arr!29518 _values!1278) (store mapRest!36014 mapKey!36014 mapValue!36014))))

(declare-fun b!979502 () Bool)

(assert (=> b!979502 (= e!552166 (and e!552165 mapRes!36014))))

(declare-fun condMapEmpty!36014 () Bool)

(declare-fun mapDefault!36014 () ValueCell!10847)

