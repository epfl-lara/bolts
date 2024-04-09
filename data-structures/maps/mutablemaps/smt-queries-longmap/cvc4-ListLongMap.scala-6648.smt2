; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83892 () Bool)

(assert start!83892)

(declare-fun b_free!19673 () Bool)

(declare-fun b_next!19673 () Bool)

(assert (=> start!83892 (= b_free!19673 (not b_next!19673))))

(declare-fun tp!68461 () Bool)

(declare-fun b_and!31453 () Bool)

(assert (=> start!83892 (= tp!68461 b_and!31453)))

(declare-fun b!979671 () Bool)

(declare-fun e!552259 () Bool)

(declare-fun tp_is_empty!22667 () Bool)

(assert (=> b!979671 (= e!552259 tp_is_empty!22667)))

(declare-fun b!979672 () Bool)

(declare-fun res!655741 () Bool)

(declare-fun e!552258 () Bool)

(assert (=> b!979672 (=> (not res!655741) (not e!552258))))

(declare-datatypes ((array!61345 0))(
  ( (array!61346 (arr!29526 (Array (_ BitVec 32) (_ BitVec 64))) (size!30006 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61345)

(declare-datatypes ((List!20597 0))(
  ( (Nil!20594) (Cons!20593 (h!21755 (_ BitVec 64)) (t!29234 List!20597)) )
))
(declare-fun arrayNoDuplicates!0 (array!61345 (_ BitVec 32) List!20597) Bool)

(assert (=> b!979672 (= res!655741 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20594))))

(declare-fun b!979673 () Bool)

(declare-fun res!655745 () Bool)

(assert (=> b!979673 (=> (not res!655745) (not e!552258))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979673 (= res!655745 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30006 _keys!1544))))))

(declare-fun b!979674 () Bool)

(declare-fun e!552260 () Bool)

(assert (=> b!979674 (= e!552258 (not e!552260))))

(declare-fun res!655743 () Bool)

(assert (=> b!979674 (=> res!655743 e!552260)))

(assert (=> b!979674 (= res!655743 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29526 _keys!1544) from!1932)))))

(declare-datatypes ((V!35205 0))(
  ( (V!35206 (val!11384 Int)) )
))
(declare-datatypes ((tuple2!14704 0))(
  ( (tuple2!14705 (_1!7362 (_ BitVec 64)) (_2!7362 V!35205)) )
))
(declare-fun lt!434726 () tuple2!14704)

(declare-datatypes ((List!20598 0))(
  ( (Nil!20595) (Cons!20594 (h!21756 tuple2!14704) (t!29235 List!20598)) )
))
(declare-datatypes ((ListLongMap!13415 0))(
  ( (ListLongMap!13416 (toList!6723 List!20598)) )
))
(declare-fun lt!434728 () ListLongMap!13415)

(declare-fun lt!434727 () ListLongMap!13415)

(declare-fun lt!434725 () tuple2!14704)

(declare-fun +!2929 (ListLongMap!13415 tuple2!14704) ListLongMap!13415)

(assert (=> b!979674 (= (+!2929 lt!434728 lt!434726) (+!2929 lt!434727 lt!434725))))

(declare-fun lt!434730 () ListLongMap!13415)

(assert (=> b!979674 (= lt!434727 (+!2929 lt!434730 lt!434726))))

(declare-fun lt!434729 () V!35205)

(assert (=> b!979674 (= lt!434726 (tuple2!14705 (select (arr!29526 _keys!1544) from!1932) lt!434729))))

(assert (=> b!979674 (= lt!434728 (+!2929 lt!434730 lt!434725))))

(declare-fun minValue!1220 () V!35205)

(assert (=> b!979674 (= lt!434725 (tuple2!14705 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32533 0))(
  ( (Unit!32534) )
))
(declare-fun lt!434734 () Unit!32533)

(declare-fun addCommutativeForDiffKeys!591 (ListLongMap!13415 (_ BitVec 64) V!35205 (_ BitVec 64) V!35205) Unit!32533)

(assert (=> b!979674 (= lt!434734 (addCommutativeForDiffKeys!591 lt!434730 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29526 _keys!1544) from!1932) lt!434729))))

(declare-datatypes ((ValueCell!10852 0))(
  ( (ValueCellFull!10852 (v!13946 V!35205)) (EmptyCell!10852) )
))
(declare-datatypes ((array!61347 0))(
  ( (array!61348 (arr!29527 (Array (_ BitVec 32) ValueCell!10852)) (size!30007 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61347)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15319 (ValueCell!10852 V!35205) V!35205)

(declare-fun dynLambda!1764 (Int (_ BitVec 64)) V!35205)

(assert (=> b!979674 (= lt!434729 (get!15319 (select (arr!29527 _values!1278) from!1932) (dynLambda!1764 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434731 () ListLongMap!13415)

(declare-fun lt!434732 () tuple2!14704)

(assert (=> b!979674 (= lt!434730 (+!2929 lt!434731 lt!434732))))

(declare-fun zeroValue!1220 () V!35205)

(assert (=> b!979674 (= lt!434732 (tuple2!14705 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3389 (array!61345 array!61347 (_ BitVec 32) (_ BitVec 32) V!35205 V!35205 (_ BitVec 32) Int) ListLongMap!13415)

(assert (=> b!979674 (= lt!434731 (getCurrentListMapNoExtraKeys!3389 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979675 () Bool)

(declare-fun res!655744 () Bool)

(assert (=> b!979675 (=> (not res!655744) (not e!552258))))

(assert (=> b!979675 (= res!655744 (and (= (size!30007 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30006 _keys!1544) (size!30007 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979676 () Bool)

(declare-fun e!552255 () Bool)

(declare-fun mapRes!36029 () Bool)

(assert (=> b!979676 (= e!552255 (and e!552259 mapRes!36029))))

(declare-fun condMapEmpty!36029 () Bool)

(declare-fun mapDefault!36029 () ValueCell!10852)

