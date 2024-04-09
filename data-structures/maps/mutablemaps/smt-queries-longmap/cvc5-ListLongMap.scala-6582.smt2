; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83404 () Bool)

(assert start!83404)

(declare-fun b_free!19369 () Bool)

(declare-fun b_next!19369 () Bool)

(assert (=> start!83404 (= b_free!19369 (not b_next!19369))))

(declare-fun tp!67386 () Bool)

(declare-fun b_and!30977 () Bool)

(assert (=> start!83404 (= tp!67386 b_and!30977)))

(declare-fun b!973446 () Bool)

(declare-fun e!548737 () Bool)

(declare-fun e!548739 () Bool)

(assert (=> b!973446 (= e!548737 e!548739)))

(declare-fun res!651718 () Bool)

(assert (=> b!973446 (=> (not res!651718) (not e!548739))))

(declare-datatypes ((array!60559 0))(
  ( (array!60560 (arr!29139 (Array (_ BitVec 32) (_ BitVec 64))) (size!29619 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60559)

(declare-datatypes ((V!34673 0))(
  ( (V!34674 (val!11184 Int)) )
))
(declare-datatypes ((tuple2!14460 0))(
  ( (tuple2!14461 (_1!7240 (_ BitVec 64)) (_2!7240 V!34673)) )
))
(declare-datatypes ((List!20339 0))(
  ( (Nil!20336) (Cons!20335 (h!21497 tuple2!14460) (t!28814 List!20339)) )
))
(declare-datatypes ((ListLongMap!13171 0))(
  ( (ListLongMap!13172 (toList!6601 List!20339)) )
))
(declare-fun lt!432543 () ListLongMap!13171)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5645 (ListLongMap!13171 (_ BitVec 64)) Bool)

(assert (=> b!973446 (= res!651718 (contains!5645 lt!432543 (select (arr!29139 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10652 0))(
  ( (ValueCellFull!10652 (v!13743 V!34673)) (EmptyCell!10652) )
))
(declare-datatypes ((array!60561 0))(
  ( (array!60562 (arr!29140 (Array (_ BitVec 32) ValueCell!10652)) (size!29620 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60561)

(declare-fun zeroValue!1367 () V!34673)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34673)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3786 (array!60559 array!60561 (_ BitVec 32) (_ BitVec 32) V!34673 V!34673 (_ BitVec 32) Int) ListLongMap!13171)

(assert (=> b!973446 (= lt!432543 (getCurrentListMap!3786 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973447 () Bool)

(declare-fun res!651721 () Bool)

(assert (=> b!973447 (=> (not res!651721) (not e!548737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973447 (= res!651721 (validKeyInArray!0 (select (arr!29139 _keys!1717) i!822)))))

(declare-fun b!973448 () Bool)

(declare-fun res!651717 () Bool)

(assert (=> b!973448 (=> (not res!651717) (not e!548737))))

(assert (=> b!973448 (= res!651717 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29619 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29619 _keys!1717))))))

(declare-fun b!973449 () Bool)

(declare-fun res!651719 () Bool)

(assert (=> b!973449 (=> (not res!651719) (not e!548737))))

(assert (=> b!973449 (= res!651719 (and (= (size!29620 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29619 _keys!1717) (size!29620 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35410 () Bool)

(declare-fun mapRes!35410 () Bool)

(assert (=> mapIsEmpty!35410 mapRes!35410))

(declare-fun b!973450 () Bool)

(declare-fun e!548733 () Bool)

(assert (=> b!973450 (= e!548733 (not true))))

(declare-fun lt!432538 () tuple2!14460)

(declare-fun +!2870 (ListLongMap!13171 tuple2!14460) ListLongMap!13171)

(assert (=> b!973450 (contains!5645 (+!2870 lt!432543 lt!432538) (select (arr!29139 _keys!1717) i!822))))

(declare-fun lt!432544 () (_ BitVec 64))

(declare-fun lt!432541 () V!34673)

(declare-datatypes ((Unit!32401 0))(
  ( (Unit!32402) )
))
(declare-fun lt!432542 () Unit!32401)

(declare-fun addStillContains!609 (ListLongMap!13171 (_ BitVec 64) V!34673 (_ BitVec 64)) Unit!32401)

(assert (=> b!973450 (= lt!432542 (addStillContains!609 lt!432543 lt!432544 lt!432541 (select (arr!29139 _keys!1717) i!822)))))

(declare-fun lt!432539 () ListLongMap!13171)

(assert (=> b!973450 (= lt!432539 (+!2870 (getCurrentListMap!3786 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432538))))

(assert (=> b!973450 (= lt!432538 (tuple2!14461 lt!432544 lt!432541))))

(declare-fun get!15129 (ValueCell!10652 V!34673) V!34673)

(declare-fun dynLambda!1709 (Int (_ BitVec 64)) V!34673)

(assert (=> b!973450 (= lt!432541 (get!15129 (select (arr!29140 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1709 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432540 () Unit!32401)

(declare-fun lemmaListMapRecursiveValidKeyArray!281 (array!60559 array!60561 (_ BitVec 32) (_ BitVec 32) V!34673 V!34673 (_ BitVec 32) Int) Unit!32401)

(assert (=> b!973450 (= lt!432540 (lemmaListMapRecursiveValidKeyArray!281 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973451 () Bool)

(declare-fun res!651714 () Bool)

(assert (=> b!973451 (=> (not res!651714) (not e!548737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60559 (_ BitVec 32)) Bool)

(assert (=> b!973451 (= res!651714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973452 () Bool)

(assert (=> b!973452 (= e!548739 e!548733)))

(declare-fun res!651716 () Bool)

(assert (=> b!973452 (=> (not res!651716) (not e!548733))))

(assert (=> b!973452 (= res!651716 (validKeyInArray!0 lt!432544))))

(assert (=> b!973452 (= lt!432544 (select (arr!29139 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!973452 (= lt!432539 (getCurrentListMap!3786 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35410 () Bool)

(declare-fun tp!67387 () Bool)

(declare-fun e!548738 () Bool)

(assert (=> mapNonEmpty!35410 (= mapRes!35410 (and tp!67387 e!548738))))

(declare-fun mapValue!35410 () ValueCell!10652)

(declare-fun mapKey!35410 () (_ BitVec 32))

(declare-fun mapRest!35410 () (Array (_ BitVec 32) ValueCell!10652))

(assert (=> mapNonEmpty!35410 (= (arr!29140 _values!1425) (store mapRest!35410 mapKey!35410 mapValue!35410))))

(declare-fun b!973453 () Bool)

(declare-fun res!651720 () Bool)

(assert (=> b!973453 (=> (not res!651720) (not e!548737))))

(declare-datatypes ((List!20340 0))(
  ( (Nil!20337) (Cons!20336 (h!21498 (_ BitVec 64)) (t!28815 List!20340)) )
))
(declare-fun arrayNoDuplicates!0 (array!60559 (_ BitVec 32) List!20340) Bool)

(assert (=> b!973453 (= res!651720 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20337))))

(declare-fun b!973454 () Bool)

(declare-fun e!548735 () Bool)

(declare-fun tp_is_empty!22267 () Bool)

(assert (=> b!973454 (= e!548735 tp_is_empty!22267)))

(declare-fun b!973456 () Bool)

(assert (=> b!973456 (= e!548738 tp_is_empty!22267)))

(declare-fun b!973455 () Bool)

(declare-fun e!548734 () Bool)

(assert (=> b!973455 (= e!548734 (and e!548735 mapRes!35410))))

(declare-fun condMapEmpty!35410 () Bool)

(declare-fun mapDefault!35410 () ValueCell!10652)

