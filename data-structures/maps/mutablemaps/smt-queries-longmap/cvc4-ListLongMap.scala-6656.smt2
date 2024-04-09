; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83940 () Bool)

(assert start!83940)

(declare-fun b_free!19721 () Bool)

(declare-fun b_next!19721 () Bool)

(assert (=> start!83940 (= b_free!19721 (not b_next!19721))))

(declare-fun tp!68606 () Bool)

(declare-fun b_and!31549 () Bool)

(assert (=> start!83940 (= tp!68606 b_and!31549)))

(declare-fun b!980511 () Bool)

(declare-fun e!552688 () Bool)

(assert (=> b!980511 (= e!552688 true)))

(declare-datatypes ((V!35269 0))(
  ( (V!35270 (val!11408 Int)) )
))
(declare-datatypes ((tuple2!14746 0))(
  ( (tuple2!14747 (_1!7383 (_ BitVec 64)) (_2!7383 V!35269)) )
))
(declare-fun lt!435448 () tuple2!14746)

(declare-datatypes ((List!20636 0))(
  ( (Nil!20633) (Cons!20632 (h!21794 tuple2!14746) (t!29321 List!20636)) )
))
(declare-datatypes ((ListLongMap!13457 0))(
  ( (ListLongMap!13458 (toList!6744 List!20636)) )
))
(declare-fun lt!435449 () ListLongMap!13457)

(declare-fun lt!435452 () tuple2!14746)

(declare-fun lt!435454 () ListLongMap!13457)

(declare-fun +!2950 (ListLongMap!13457 tuple2!14746) ListLongMap!13457)

(assert (=> b!980511 (= lt!435449 (+!2950 (+!2950 lt!435454 lt!435452) lt!435448))))

(declare-fun zeroValue!1220 () V!35269)

(declare-fun lt!435450 () V!35269)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((Unit!32575 0))(
  ( (Unit!32576) )
))
(declare-fun lt!435445 () Unit!32575)

(declare-datatypes ((array!61437 0))(
  ( (array!61438 (arr!29572 (Array (_ BitVec 32) (_ BitVec 64))) (size!30052 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61437)

(declare-fun addCommutativeForDiffKeys!612 (ListLongMap!13457 (_ BitVec 64) V!35269 (_ BitVec 64) V!35269) Unit!32575)

(assert (=> b!980511 (= lt!435445 (addCommutativeForDiffKeys!612 lt!435454 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29572 _keys!1544) from!1932) lt!435450))))

(declare-fun b!980512 () Bool)

(declare-fun res!656316 () Bool)

(declare-fun e!552687 () Bool)

(assert (=> b!980512 (=> (not res!656316) (not e!552687))))

(declare-datatypes ((List!20637 0))(
  ( (Nil!20634) (Cons!20633 (h!21795 (_ BitVec 64)) (t!29322 List!20637)) )
))
(declare-fun arrayNoDuplicates!0 (array!61437 (_ BitVec 32) List!20637) Bool)

(assert (=> b!980512 (= res!656316 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20634))))

(declare-fun mapIsEmpty!36101 () Bool)

(declare-fun mapRes!36101 () Bool)

(assert (=> mapIsEmpty!36101 mapRes!36101))

(declare-fun mapNonEmpty!36101 () Bool)

(declare-fun tp!68605 () Bool)

(declare-fun e!552692 () Bool)

(assert (=> mapNonEmpty!36101 (= mapRes!36101 (and tp!68605 e!552692))))

(declare-datatypes ((ValueCell!10876 0))(
  ( (ValueCellFull!10876 (v!13970 V!35269)) (EmptyCell!10876) )
))
(declare-fun mapValue!36101 () ValueCell!10876)

(declare-datatypes ((array!61439 0))(
  ( (array!61440 (arr!29573 (Array (_ BitVec 32) ValueCell!10876)) (size!30053 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61439)

(declare-fun mapRest!36101 () (Array (_ BitVec 32) ValueCell!10876))

(declare-fun mapKey!36101 () (_ BitVec 32))

(assert (=> mapNonEmpty!36101 (= (arr!29573 _values!1278) (store mapRest!36101 mapKey!36101 mapValue!36101))))

(declare-fun b!980513 () Bool)

(declare-fun e!552691 () Bool)

(declare-fun e!552690 () Bool)

(assert (=> b!980513 (= e!552691 (and e!552690 mapRes!36101))))

(declare-fun condMapEmpty!36101 () Bool)

(declare-fun mapDefault!36101 () ValueCell!10876)

