; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84186 () Bool)

(assert start!84186)

(declare-fun b_free!19859 () Bool)

(declare-fun b_next!19859 () Bool)

(assert (=> start!84186 (= b_free!19859 (not b_next!19859))))

(declare-fun tp!69181 () Bool)

(declare-fun b_and!31813 () Bool)

(assert (=> start!84186 (= tp!69181 b_and!31813)))

(declare-fun b!983923 () Bool)

(declare-fun res!658498 () Bool)

(declare-fun e!554725 () Bool)

(assert (=> b!983923 (=> (not res!658498) (not e!554725))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983923 (= res!658498 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!983924 () Bool)

(declare-fun e!554724 () Bool)

(assert (=> b!983924 (= e!554724 (not true))))

(declare-datatypes ((V!35597 0))(
  ( (V!35598 (val!11531 Int)) )
))
(declare-datatypes ((tuple2!14846 0))(
  ( (tuple2!14847 (_1!7433 (_ BitVec 64)) (_2!7433 V!35597)) )
))
(declare-datatypes ((List!20766 0))(
  ( (Nil!20763) (Cons!20762 (h!21924 tuple2!14846) (t!29577 List!20766)) )
))
(declare-datatypes ((ListLongMap!13557 0))(
  ( (ListLongMap!13558 (toList!6794 List!20766)) )
))
(declare-fun lt!436606 () ListLongMap!13557)

(declare-fun lt!436602 () tuple2!14846)

(declare-fun lt!436603 () tuple2!14846)

(declare-fun +!2987 (ListLongMap!13557 tuple2!14846) ListLongMap!13557)

(assert (=> b!983924 (= (+!2987 (+!2987 lt!436606 lt!436602) lt!436603) (+!2987 (+!2987 lt!436606 lt!436603) lt!436602))))

(declare-fun lt!436605 () V!35597)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61891 0))(
  ( (array!61892 (arr!29799 (Array (_ BitVec 32) (_ BitVec 64))) (size!30279 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61891)

(assert (=> b!983924 (= lt!436603 (tuple2!14847 (select (arr!29799 _keys!1544) from!1932) lt!436605))))

(declare-fun minValue!1220 () V!35597)

(assert (=> b!983924 (= lt!436602 (tuple2!14847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32649 0))(
  ( (Unit!32650) )
))
(declare-fun lt!436604 () Unit!32649)

(declare-fun addCommutativeForDiffKeys!649 (ListLongMap!13557 (_ BitVec 64) V!35597 (_ BitVec 64) V!35597) Unit!32649)

(assert (=> b!983924 (= lt!436604 (addCommutativeForDiffKeys!649 lt!436606 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29799 _keys!1544) from!1932) lt!436605))))

(declare-fun mapNonEmpty!36470 () Bool)

(declare-fun mapRes!36470 () Bool)

(declare-fun tp!69182 () Bool)

(declare-fun e!554723 () Bool)

(assert (=> mapNonEmpty!36470 (= mapRes!36470 (and tp!69182 e!554723))))

(declare-datatypes ((ValueCell!10999 0))(
  ( (ValueCellFull!10999 (v!14093 V!35597)) (EmptyCell!10999) )
))
(declare-fun mapRest!36470 () (Array (_ BitVec 32) ValueCell!10999))

(declare-datatypes ((array!61893 0))(
  ( (array!61894 (arr!29800 (Array (_ BitVec 32) ValueCell!10999)) (size!30280 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61893)

(declare-fun mapKey!36470 () (_ BitVec 32))

(declare-fun mapValue!36470 () ValueCell!10999)

(assert (=> mapNonEmpty!36470 (= (arr!29800 _values!1278) (store mapRest!36470 mapKey!36470 mapValue!36470))))

(declare-fun b!983925 () Bool)

(declare-fun e!554726 () Bool)

(declare-fun tp_is_empty!22961 () Bool)

(assert (=> b!983925 (= e!554726 tp_is_empty!22961)))

(declare-fun b!983926 () Bool)

(assert (=> b!983926 (= e!554723 tp_is_empty!22961)))

(declare-fun mapIsEmpty!36470 () Bool)

(assert (=> mapIsEmpty!36470 mapRes!36470))

(declare-fun b!983927 () Bool)

(declare-fun res!658497 () Bool)

(assert (=> b!983927 (=> (not res!658497) (not e!554725))))

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!983927 (= res!658497 (and (= (size!30280 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30279 _keys!1544) (size!30280 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983928 () Bool)

(declare-fun res!658499 () Bool)

(assert (=> b!983928 (=> (not res!658499) (not e!554725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983928 (= res!658499 (validKeyInArray!0 (select (arr!29799 _keys!1544) from!1932)))))

(declare-fun b!983929 () Bool)

(declare-fun res!658496 () Bool)

(assert (=> b!983929 (=> (not res!658496) (not e!554725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61891 (_ BitVec 32)) Bool)

(assert (=> b!983929 (= res!658496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983930 () Bool)

(declare-fun res!658500 () Bool)

(assert (=> b!983930 (=> (not res!658500) (not e!554725))))

(declare-datatypes ((List!20767 0))(
  ( (Nil!20764) (Cons!20763 (h!21925 (_ BitVec 64)) (t!29578 List!20767)) )
))
(declare-fun arrayNoDuplicates!0 (array!61891 (_ BitVec 32) List!20767) Bool)

(assert (=> b!983930 (= res!658500 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20764))))

(declare-fun b!983922 () Bool)

(declare-fun e!554722 () Bool)

(assert (=> b!983922 (= e!554722 (and e!554726 mapRes!36470))))

(declare-fun condMapEmpty!36470 () Bool)

(declare-fun mapDefault!36470 () ValueCell!10999)

