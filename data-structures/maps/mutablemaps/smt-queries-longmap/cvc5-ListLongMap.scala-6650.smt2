; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83900 () Bool)

(assert start!83900)

(declare-fun b_free!19681 () Bool)

(declare-fun b_next!19681 () Bool)

(assert (=> start!83900 (= b_free!19681 (not b_next!19681))))

(declare-fun tp!68485 () Bool)

(declare-fun b_and!31469 () Bool)

(assert (=> start!83900 (= tp!68485 b_and!31469)))

(declare-fun b!979811 () Bool)

(declare-fun e!552332 () Bool)

(assert (=> b!979811 (= e!552332 true)))

(declare-datatypes ((V!35217 0))(
  ( (V!35218 (val!11388 Int)) )
))
(declare-datatypes ((tuple2!14710 0))(
  ( (tuple2!14711 (_1!7365 (_ BitVec 64)) (_2!7365 V!35217)) )
))
(declare-datatypes ((List!20602 0))(
  ( (Nil!20599) (Cons!20598 (h!21760 tuple2!14710) (t!29247 List!20602)) )
))
(declare-datatypes ((ListLongMap!13421 0))(
  ( (ListLongMap!13422 (toList!6726 List!20602)) )
))
(declare-fun lt!434852 () ListLongMap!13421)

(declare-fun lt!434849 () tuple2!14710)

(declare-fun lt!434845 () ListLongMap!13421)

(declare-fun lt!434846 () tuple2!14710)

(declare-fun +!2932 (ListLongMap!13421 tuple2!14710) ListLongMap!13421)

(assert (=> b!979811 (= lt!434852 (+!2932 (+!2932 lt!434845 lt!434849) lt!434846))))

(declare-datatypes ((Unit!32539 0))(
  ( (Unit!32540) )
))
(declare-fun lt!434851 () Unit!32539)

(declare-fun zeroValue!1220 () V!35217)

(declare-fun lt!434850 () V!35217)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61361 0))(
  ( (array!61362 (arr!29534 (Array (_ BitVec 32) (_ BitVec 64))) (size!30014 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61361)

(declare-fun addCommutativeForDiffKeys!594 (ListLongMap!13421 (_ BitVec 64) V!35217 (_ BitVec 64) V!35217) Unit!32539)

(assert (=> b!979811 (= lt!434851 (addCommutativeForDiffKeys!594 lt!434845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29534 _keys!1544) from!1932) lt!434850))))

(declare-fun b!979812 () Bool)

(declare-fun res!655839 () Bool)

(declare-fun e!552328 () Bool)

(assert (=> b!979812 (=> (not res!655839) (not e!552328))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979812 (= res!655839 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979813 () Bool)

(declare-fun res!655836 () Bool)

(assert (=> b!979813 (=> (not res!655836) (not e!552328))))

(declare-datatypes ((List!20603 0))(
  ( (Nil!20600) (Cons!20599 (h!21761 (_ BitVec 64)) (t!29248 List!20603)) )
))
(declare-fun arrayNoDuplicates!0 (array!61361 (_ BitVec 32) List!20603) Bool)

(assert (=> b!979813 (= res!655836 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20600))))

(declare-fun b!979814 () Bool)

(declare-fun e!552331 () Bool)

(declare-fun tp_is_empty!22675 () Bool)

(assert (=> b!979814 (= e!552331 tp_is_empty!22675)))

(declare-fun b!979815 () Bool)

(declare-fun res!655835 () Bool)

(assert (=> b!979815 (=> (not res!655835) (not e!552328))))

(assert (=> b!979815 (= res!655835 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30014 _keys!1544))))))

(declare-fun b!979816 () Bool)

(declare-fun res!655837 () Bool)

(assert (=> b!979816 (=> (not res!655837) (not e!552328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979816 (= res!655837 (validKeyInArray!0 (select (arr!29534 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36041 () Bool)

(declare-fun mapRes!36041 () Bool)

(assert (=> mapIsEmpty!36041 mapRes!36041))

(declare-fun b!979817 () Bool)

(declare-fun e!552329 () Bool)

(assert (=> b!979817 (= e!552329 tp_is_empty!22675)))

(declare-fun b!979818 () Bool)

(declare-fun res!655838 () Bool)

(assert (=> b!979818 (=> (not res!655838) (not e!552328))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61361 (_ BitVec 32)) Bool)

(assert (=> b!979818 (= res!655838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979819 () Bool)

(declare-fun res!655840 () Bool)

(assert (=> b!979819 (=> (not res!655840) (not e!552328))))

(declare-datatypes ((ValueCell!10856 0))(
  ( (ValueCellFull!10856 (v!13950 V!35217)) (EmptyCell!10856) )
))
(declare-datatypes ((array!61363 0))(
  ( (array!61364 (arr!29535 (Array (_ BitVec 32) ValueCell!10856)) (size!30015 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61363)

(assert (=> b!979819 (= res!655840 (and (= (size!30015 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30014 _keys!1544) (size!30015 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979820 () Bool)

(declare-fun e!552330 () Bool)

(assert (=> b!979820 (= e!552330 (and e!552329 mapRes!36041))))

(declare-fun condMapEmpty!36041 () Bool)

(declare-fun mapDefault!36041 () ValueCell!10856)

