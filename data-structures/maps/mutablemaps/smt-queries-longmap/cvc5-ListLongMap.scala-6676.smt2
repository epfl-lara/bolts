; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84056 () Bool)

(assert start!84056)

(declare-fun b_free!19783 () Bool)

(declare-fun b_next!19783 () Bool)

(assert (=> start!84056 (= b_free!19783 (not b_next!19783))))

(declare-fun tp!68872 () Bool)

(declare-fun b_and!31667 () Bool)

(assert (=> start!84056 (= tp!68872 b_and!31667)))

(declare-fun mapNonEmpty!36275 () Bool)

(declare-fun mapRes!36275 () Bool)

(declare-fun tp!68873 () Bool)

(declare-fun e!553642 () Bool)

(assert (=> mapNonEmpty!36275 (= mapRes!36275 (and tp!68873 e!553642))))

(declare-datatypes ((V!35425 0))(
  ( (V!35426 (val!11466 Int)) )
))
(declare-datatypes ((ValueCell!10934 0))(
  ( (ValueCellFull!10934 (v!14028 V!35425)) (EmptyCell!10934) )
))
(declare-datatypes ((array!61649 0))(
  ( (array!61650 (arr!29678 (Array (_ BitVec 32) ValueCell!10934)) (size!30158 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61649)

(declare-fun mapValue!36275 () ValueCell!10934)

(declare-fun mapKey!36275 () (_ BitVec 32))

(declare-fun mapRest!36275 () (Array (_ BitVec 32) ValueCell!10934))

(assert (=> mapNonEmpty!36275 (= (arr!29678 _values!1278) (store mapRest!36275 mapKey!36275 mapValue!36275))))

(declare-fun res!657324 () Bool)

(declare-fun e!553641 () Bool)

(assert (=> start!84056 (=> (not res!657324) (not e!553641))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84056 (= res!657324 (validMask!0 mask!1948))))

(assert (=> start!84056 e!553641))

(assert (=> start!84056 true))

(declare-fun tp_is_empty!22831 () Bool)

(assert (=> start!84056 tp_is_empty!22831))

(declare-fun e!553644 () Bool)

(declare-fun array_inv!22821 (array!61649) Bool)

(assert (=> start!84056 (and (array_inv!22821 _values!1278) e!553644)))

(assert (=> start!84056 tp!68872))

(declare-datatypes ((array!61651 0))(
  ( (array!61652 (arr!29679 (Array (_ BitVec 32) (_ BitVec 64))) (size!30159 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61651)

(declare-fun array_inv!22822 (array!61651) Bool)

(assert (=> start!84056 (array_inv!22822 _keys!1544)))

(declare-fun b!982094 () Bool)

(declare-fun e!553643 () Bool)

(assert (=> b!982094 (= e!553641 e!553643)))

(declare-fun res!657327 () Bool)

(assert (=> b!982094 (=> (not res!657327) (not e!553643))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982094 (= res!657327 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29679 _keys!1544) from!1932))))))

(declare-fun lt!435996 () V!35425)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15410 (ValueCell!10934 V!35425) V!35425)

(declare-fun dynLambda!1799 (Int (_ BitVec 64)) V!35425)

(assert (=> b!982094 (= lt!435996 (get!15410 (select (arr!29678 _values!1278) from!1932) (dynLambda!1799 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35425)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14792 0))(
  ( (tuple2!14793 (_1!7406 (_ BitVec 64)) (_2!7406 V!35425)) )
))
(declare-datatypes ((List!20698 0))(
  ( (Nil!20695) (Cons!20694 (h!21856 tuple2!14792) (t!29439 List!20698)) )
))
(declare-datatypes ((ListLongMap!13503 0))(
  ( (ListLongMap!13504 (toList!6767 List!20698)) )
))
(declare-fun lt!436000 () ListLongMap!13503)

(declare-fun zeroValue!1220 () V!35425)

(declare-fun getCurrentListMapNoExtraKeys!3426 (array!61651 array!61649 (_ BitVec 32) (_ BitVec 32) V!35425 V!35425 (_ BitVec 32) Int) ListLongMap!13503)

(assert (=> b!982094 (= lt!436000 (getCurrentListMapNoExtraKeys!3426 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982095 () Bool)

(declare-fun res!657326 () Bool)

(assert (=> b!982095 (=> (not res!657326) (not e!553641))))

(assert (=> b!982095 (= res!657326 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982096 () Bool)

(declare-fun e!553645 () Bool)

(assert (=> b!982096 (= e!553645 tp_is_empty!22831)))

(declare-fun mapIsEmpty!36275 () Bool)

(assert (=> mapIsEmpty!36275 mapRes!36275))

(declare-fun b!982097 () Bool)

(declare-fun res!657321 () Bool)

(assert (=> b!982097 (=> (not res!657321) (not e!553641))))

(declare-datatypes ((List!20699 0))(
  ( (Nil!20696) (Cons!20695 (h!21857 (_ BitVec 64)) (t!29440 List!20699)) )
))
(declare-fun arrayNoDuplicates!0 (array!61651 (_ BitVec 32) List!20699) Bool)

(assert (=> b!982097 (= res!657321 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20696))))

(declare-fun b!982098 () Bool)

(declare-fun res!657322 () Bool)

(assert (=> b!982098 (=> (not res!657322) (not e!553641))))

(assert (=> b!982098 (= res!657322 (and (= (size!30158 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30159 _keys!1544) (size!30158 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982099 () Bool)

(assert (=> b!982099 (= e!553642 tp_is_empty!22831)))

(declare-fun b!982100 () Bool)

(declare-fun res!657325 () Bool)

(assert (=> b!982100 (=> (not res!657325) (not e!553641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61651 (_ BitVec 32)) Bool)

(assert (=> b!982100 (= res!657325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982101 () Bool)

(assert (=> b!982101 (= e!553643 (not (bvsle from!1932 (size!30159 _keys!1544))))))

(declare-fun lt!435998 () tuple2!14792)

(declare-fun lt!435997 () tuple2!14792)

(declare-fun +!2969 (ListLongMap!13503 tuple2!14792) ListLongMap!13503)

(assert (=> b!982101 (= (+!2969 (+!2969 lt!436000 lt!435998) lt!435997) (+!2969 (+!2969 lt!436000 lt!435997) lt!435998))))

(assert (=> b!982101 (= lt!435997 (tuple2!14793 (select (arr!29679 _keys!1544) from!1932) lt!435996))))

(assert (=> b!982101 (= lt!435998 (tuple2!14793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32613 0))(
  ( (Unit!32614) )
))
(declare-fun lt!435999 () Unit!32613)

(declare-fun addCommutativeForDiffKeys!631 (ListLongMap!13503 (_ BitVec 64) V!35425 (_ BitVec 64) V!35425) Unit!32613)

(assert (=> b!982101 (= lt!435999 (addCommutativeForDiffKeys!631 lt!436000 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29679 _keys!1544) from!1932) lt!435996))))

(declare-fun b!982102 () Bool)

(declare-fun res!657320 () Bool)

(assert (=> b!982102 (=> (not res!657320) (not e!553641))))

(assert (=> b!982102 (= res!657320 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30159 _keys!1544))))))

(declare-fun b!982103 () Bool)

(declare-fun res!657323 () Bool)

(assert (=> b!982103 (=> (not res!657323) (not e!553641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982103 (= res!657323 (validKeyInArray!0 (select (arr!29679 _keys!1544) from!1932)))))

(declare-fun b!982104 () Bool)

(assert (=> b!982104 (= e!553644 (and e!553645 mapRes!36275))))

(declare-fun condMapEmpty!36275 () Bool)

(declare-fun mapDefault!36275 () ValueCell!10934)

