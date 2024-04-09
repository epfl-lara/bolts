; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84044 () Bool)

(assert start!84044)

(declare-fun b_free!19771 () Bool)

(declare-fun b_next!19771 () Bool)

(assert (=> start!84044 (= b_free!19771 (not b_next!19771))))

(declare-fun tp!68837 () Bool)

(declare-fun b_and!31643 () Bool)

(assert (=> start!84044 (= tp!68837 b_and!31643)))

(declare-fun b!981884 () Bool)

(declare-fun e!553534 () Bool)

(declare-fun tp_is_empty!22819 () Bool)

(assert (=> b!981884 (= e!553534 tp_is_empty!22819)))

(declare-fun b!981885 () Bool)

(declare-fun e!553533 () Bool)

(assert (=> b!981885 (= e!553533 (not true))))

(declare-datatypes ((V!35409 0))(
  ( (V!35410 (val!11460 Int)) )
))
(declare-datatypes ((tuple2!14784 0))(
  ( (tuple2!14785 (_1!7402 (_ BitVec 64)) (_2!7402 V!35409)) )
))
(declare-datatypes ((List!20691 0))(
  ( (Nil!20688) (Cons!20687 (h!21849 tuple2!14784) (t!29420 List!20691)) )
))
(declare-datatypes ((ListLongMap!13495 0))(
  ( (ListLongMap!13496 (toList!6763 List!20691)) )
))
(declare-fun lt!435906 () ListLongMap!13495)

(declare-fun lt!435908 () tuple2!14784)

(declare-fun lt!435910 () tuple2!14784)

(declare-fun +!2966 (ListLongMap!13495 tuple2!14784) ListLongMap!13495)

(assert (=> b!981885 (= (+!2966 (+!2966 lt!435906 lt!435908) lt!435910) (+!2966 (+!2966 lt!435906 lt!435910) lt!435908))))

(declare-fun lt!435907 () V!35409)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61629 0))(
  ( (array!61630 (arr!29668 (Array (_ BitVec 32) (_ BitVec 64))) (size!30148 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61629)

(assert (=> b!981885 (= lt!435910 (tuple2!14785 (select (arr!29668 _keys!1544) from!1932) lt!435907))))

(declare-fun zeroValue!1220 () V!35409)

(assert (=> b!981885 (= lt!435908 (tuple2!14785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32607 0))(
  ( (Unit!32608) )
))
(declare-fun lt!435909 () Unit!32607)

(declare-fun addCommutativeForDiffKeys!628 (ListLongMap!13495 (_ BitVec 64) V!35409 (_ BitVec 64) V!35409) Unit!32607)

(assert (=> b!981885 (= lt!435909 (addCommutativeForDiffKeys!628 lt!435906 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29668 _keys!1544) from!1932) lt!435907))))

(declare-fun res!657176 () Bool)

(declare-fun e!553538 () Bool)

(assert (=> start!84044 (=> (not res!657176) (not e!553538))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84044 (= res!657176 (validMask!0 mask!1948))))

(assert (=> start!84044 e!553538))

(assert (=> start!84044 true))

(assert (=> start!84044 tp_is_empty!22819))

(declare-datatypes ((ValueCell!10928 0))(
  ( (ValueCellFull!10928 (v!14022 V!35409)) (EmptyCell!10928) )
))
(declare-datatypes ((array!61631 0))(
  ( (array!61632 (arr!29669 (Array (_ BitVec 32) ValueCell!10928)) (size!30149 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61631)

(declare-fun e!553537 () Bool)

(declare-fun array_inv!22815 (array!61631) Bool)

(assert (=> start!84044 (and (array_inv!22815 _values!1278) e!553537)))

(assert (=> start!84044 tp!68837))

(declare-fun array_inv!22816 (array!61629) Bool)

(assert (=> start!84044 (array_inv!22816 _keys!1544)))

(declare-fun b!981886 () Bool)

(declare-fun res!657181 () Bool)

(assert (=> b!981886 (=> (not res!657181) (not e!553538))))

(assert (=> b!981886 (= res!657181 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30148 _keys!1544))))))

(declare-fun mapIsEmpty!36257 () Bool)

(declare-fun mapRes!36257 () Bool)

(assert (=> mapIsEmpty!36257 mapRes!36257))

(declare-fun b!981887 () Bool)

(assert (=> b!981887 (= e!553538 e!553533)))

(declare-fun res!657178 () Bool)

(assert (=> b!981887 (=> (not res!657178) (not e!553533))))

(assert (=> b!981887 (= res!657178 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29668 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15402 (ValueCell!10928 V!35409) V!35409)

(declare-fun dynLambda!1795 (Int (_ BitVec 64)) V!35409)

(assert (=> b!981887 (= lt!435907 (get!15402 (select (arr!29669 _values!1278) from!1932) (dynLambda!1795 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35409)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3422 (array!61629 array!61631 (_ BitVec 32) (_ BitVec 32) V!35409 V!35409 (_ BitVec 32) Int) ListLongMap!13495)

(assert (=> b!981887 (= lt!435906 (getCurrentListMapNoExtraKeys!3422 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981888 () Bool)

(declare-fun res!657183 () Bool)

(assert (=> b!981888 (=> (not res!657183) (not e!553538))))

(assert (=> b!981888 (= res!657183 (and (= (size!30149 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30148 _keys!1544) (size!30149 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981889 () Bool)

(declare-fun e!553535 () Bool)

(assert (=> b!981889 (= e!553535 tp_is_empty!22819)))

(declare-fun b!981890 () Bool)

(declare-fun res!657179 () Bool)

(assert (=> b!981890 (=> (not res!657179) (not e!553538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981890 (= res!657179 (validKeyInArray!0 (select (arr!29668 _keys!1544) from!1932)))))

(declare-fun b!981891 () Bool)

(declare-fun res!657177 () Bool)

(assert (=> b!981891 (=> (not res!657177) (not e!553538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61629 (_ BitVec 32)) Bool)

(assert (=> b!981891 (= res!657177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981892 () Bool)

(declare-fun res!657182 () Bool)

(assert (=> b!981892 (=> (not res!657182) (not e!553538))))

(assert (=> b!981892 (= res!657182 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981893 () Bool)

(declare-fun res!657180 () Bool)

(assert (=> b!981893 (=> (not res!657180) (not e!553538))))

(declare-datatypes ((List!20692 0))(
  ( (Nil!20689) (Cons!20688 (h!21850 (_ BitVec 64)) (t!29421 List!20692)) )
))
(declare-fun arrayNoDuplicates!0 (array!61629 (_ BitVec 32) List!20692) Bool)

(assert (=> b!981893 (= res!657180 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20689))))

(declare-fun mapNonEmpty!36257 () Bool)

(declare-fun tp!68836 () Bool)

(assert (=> mapNonEmpty!36257 (= mapRes!36257 (and tp!68836 e!553535))))

(declare-fun mapRest!36257 () (Array (_ BitVec 32) ValueCell!10928))

(declare-fun mapKey!36257 () (_ BitVec 32))

(declare-fun mapValue!36257 () ValueCell!10928)

(assert (=> mapNonEmpty!36257 (= (arr!29669 _values!1278) (store mapRest!36257 mapKey!36257 mapValue!36257))))

(declare-fun b!981894 () Bool)

(assert (=> b!981894 (= e!553537 (and e!553534 mapRes!36257))))

(declare-fun condMapEmpty!36257 () Bool)

(declare-fun mapDefault!36257 () ValueCell!10928)

