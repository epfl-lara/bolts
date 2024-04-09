; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84014 () Bool)

(assert start!84014)

(declare-fun b_free!19741 () Bool)

(declare-fun b_next!19741 () Bool)

(assert (=> start!84014 (= b_free!19741 (not b_next!19741))))

(declare-fun tp!68747 () Bool)

(declare-fun b_and!31583 () Bool)

(assert (=> start!84014 (= tp!68747 b_and!31583)))

(declare-fun b!981359 () Bool)

(declare-fun res!656818 () Bool)

(declare-fun e!553265 () Bool)

(assert (=> b!981359 (=> (not res!656818) (not e!553265))))

(declare-datatypes ((array!61571 0))(
  ( (array!61572 (arr!29639 (Array (_ BitVec 32) (_ BitVec 64))) (size!30119 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61571)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981359 (= res!656818 (validKeyInArray!0 (select (arr!29639 _keys!1544) from!1932)))))

(declare-fun b!981360 () Bool)

(declare-fun res!656819 () Bool)

(assert (=> b!981360 (=> (not res!656819) (not e!553265))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61571 (_ BitVec 32)) Bool)

(assert (=> b!981360 (= res!656819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981361 () Bool)

(declare-fun e!553264 () Bool)

(declare-fun tp_is_empty!22789 () Bool)

(assert (=> b!981361 (= e!553264 tp_is_empty!22789)))

(declare-fun b!981362 () Bool)

(declare-fun e!553266 () Bool)

(assert (=> b!981362 (= e!553266 (not true))))

(declare-datatypes ((V!35369 0))(
  ( (V!35370 (val!11445 Int)) )
))
(declare-datatypes ((tuple2!14762 0))(
  ( (tuple2!14763 (_1!7391 (_ BitVec 64)) (_2!7391 V!35369)) )
))
(declare-datatypes ((List!20669 0))(
  ( (Nil!20666) (Cons!20665 (h!21827 tuple2!14762) (t!29368 List!20669)) )
))
(declare-datatypes ((ListLongMap!13473 0))(
  ( (ListLongMap!13474 (toList!6752 List!20669)) )
))
(declare-fun lt!435684 () ListLongMap!13473)

(declare-fun lt!435682 () tuple2!14762)

(declare-fun lt!435683 () tuple2!14762)

(declare-fun +!2956 (ListLongMap!13473 tuple2!14762) ListLongMap!13473)

(assert (=> b!981362 (= (+!2956 (+!2956 lt!435684 lt!435682) lt!435683) (+!2956 (+!2956 lt!435684 lt!435683) lt!435682))))

(declare-fun lt!435681 () V!35369)

(assert (=> b!981362 (= lt!435683 (tuple2!14763 (select (arr!29639 _keys!1544) from!1932) lt!435681))))

(declare-fun zeroValue!1220 () V!35369)

(assert (=> b!981362 (= lt!435682 (tuple2!14763 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32587 0))(
  ( (Unit!32588) )
))
(declare-fun lt!435685 () Unit!32587)

(declare-fun addCommutativeForDiffKeys!618 (ListLongMap!13473 (_ BitVec 64) V!35369 (_ BitVec 64) V!35369) Unit!32587)

(assert (=> b!981362 (= lt!435685 (addCommutativeForDiffKeys!618 lt!435684 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29639 _keys!1544) from!1932) lt!435681))))

(declare-fun b!981363 () Bool)

(declare-fun res!656816 () Bool)

(assert (=> b!981363 (=> (not res!656816) (not e!553265))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981363 (= res!656816 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981364 () Bool)

(declare-fun e!553267 () Bool)

(declare-fun e!553263 () Bool)

(declare-fun mapRes!36212 () Bool)

(assert (=> b!981364 (= e!553267 (and e!553263 mapRes!36212))))

(declare-fun condMapEmpty!36212 () Bool)

(declare-datatypes ((ValueCell!10913 0))(
  ( (ValueCellFull!10913 (v!14007 V!35369)) (EmptyCell!10913) )
))
(declare-datatypes ((array!61573 0))(
  ( (array!61574 (arr!29640 (Array (_ BitVec 32) ValueCell!10913)) (size!30120 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61573)

(declare-fun mapDefault!36212 () ValueCell!10913)

