; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83380 () Bool)

(assert start!83380)

(declare-fun b_free!19345 () Bool)

(declare-fun b_next!19345 () Bool)

(assert (=> start!83380 (= b_free!19345 (not b_next!19345))))

(declare-fun tp!67314 () Bool)

(declare-fun b_and!30929 () Bool)

(assert (=> start!83380 (= tp!67314 b_and!30929)))

(declare-fun b!973026 () Bool)

(declare-fun e!548483 () Bool)

(assert (=> b!973026 (= e!548483 (not true))))

(declare-datatypes ((V!34641 0))(
  ( (V!34642 (val!11172 Int)) )
))
(declare-datatypes ((tuple2!14438 0))(
  ( (tuple2!14439 (_1!7229 (_ BitVec 64)) (_2!7229 V!34641)) )
))
(declare-fun lt!432288 () tuple2!14438)

(declare-datatypes ((List!20322 0))(
  ( (Nil!20319) (Cons!20318 (h!21480 tuple2!14438) (t!28773 List!20322)) )
))
(declare-datatypes ((ListLongMap!13149 0))(
  ( (ListLongMap!13150 (toList!6590 List!20322)) )
))
(declare-fun lt!432290 () ListLongMap!13149)

(declare-datatypes ((array!60511 0))(
  ( (array!60512 (arr!29115 (Array (_ BitVec 32) (_ BitVec 64))) (size!29595 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60511)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5636 (ListLongMap!13149 (_ BitVec 64)) Bool)

(declare-fun +!2863 (ListLongMap!13149 tuple2!14438) ListLongMap!13149)

(assert (=> b!973026 (contains!5636 (+!2863 lt!432290 lt!432288) (select (arr!29115 _keys!1717) i!822))))

(declare-fun lt!432291 () (_ BitVec 64))

(declare-fun lt!432292 () V!34641)

(declare-datatypes ((Unit!32387 0))(
  ( (Unit!32388) )
))
(declare-fun lt!432286 () Unit!32387)

(declare-fun addStillContains!602 (ListLongMap!13149 (_ BitVec 64) V!34641 (_ BitVec 64)) Unit!32387)

(assert (=> b!973026 (= lt!432286 (addStillContains!602 lt!432290 lt!432291 lt!432292 (select (arr!29115 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10640 0))(
  ( (ValueCellFull!10640 (v!13731 V!34641)) (EmptyCell!10640) )
))
(declare-datatypes ((array!60513 0))(
  ( (array!60514 (arr!29116 (Array (_ BitVec 32) ValueCell!10640)) (size!29596 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60513)

(declare-fun zeroValue!1367 () V!34641)

(declare-fun minValue!1367 () V!34641)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun lt!432287 () ListLongMap!13149)

(declare-fun getCurrentListMap!3775 (array!60511 array!60513 (_ BitVec 32) (_ BitVec 32) V!34641 V!34641 (_ BitVec 32) Int) ListLongMap!13149)

(assert (=> b!973026 (= lt!432287 (+!2863 (getCurrentListMap!3775 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432288))))

(assert (=> b!973026 (= lt!432288 (tuple2!14439 lt!432291 lt!432292))))

(declare-fun get!15114 (ValueCell!10640 V!34641) V!34641)

(declare-fun dynLambda!1702 (Int (_ BitVec 64)) V!34641)

(assert (=> b!973026 (= lt!432292 (get!15114 (select (arr!29116 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1702 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432289 () Unit!32387)

(declare-fun lemmaListMapRecursiveValidKeyArray!274 (array!60511 array!60513 (_ BitVec 32) (_ BitVec 32) V!34641 V!34641 (_ BitVec 32) Int) Unit!32387)

(assert (=> b!973026 (= lt!432289 (lemmaListMapRecursiveValidKeyArray!274 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973027 () Bool)

(declare-fun e!548484 () Bool)

(declare-fun tp_is_empty!22243 () Bool)

(assert (=> b!973027 (= e!548484 tp_is_empty!22243)))

(declare-fun b!973028 () Bool)

(declare-fun res!651432 () Bool)

(declare-fun e!548486 () Bool)

(assert (=> b!973028 (=> (not res!651432) (not e!548486))))

(assert (=> b!973028 (= res!651432 (and (= (size!29596 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29595 _keys!1717) (size!29596 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973029 () Bool)

(declare-fun res!651429 () Bool)

(assert (=> b!973029 (=> (not res!651429) (not e!548486))))

(assert (=> b!973029 (= res!651429 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29595 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29595 _keys!1717))))))

(declare-fun b!973030 () Bool)

(declare-fun res!651428 () Bool)

(assert (=> b!973030 (=> (not res!651428) (not e!548486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60511 (_ BitVec 32)) Bool)

(assert (=> b!973030 (= res!651428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973031 () Bool)

(declare-fun res!651427 () Bool)

(assert (=> b!973031 (=> (not res!651427) (not e!548486))))

(declare-datatypes ((List!20323 0))(
  ( (Nil!20320) (Cons!20319 (h!21481 (_ BitVec 64)) (t!28774 List!20323)) )
))
(declare-fun arrayNoDuplicates!0 (array!60511 (_ BitVec 32) List!20323) Bool)

(assert (=> b!973031 (= res!651427 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20320))))

(declare-fun b!973032 () Bool)

(declare-fun e!548485 () Bool)

(declare-fun mapRes!35374 () Bool)

(assert (=> b!973032 (= e!548485 (and e!548484 mapRes!35374))))

(declare-fun condMapEmpty!35374 () Bool)

(declare-fun mapDefault!35374 () ValueCell!10640)

