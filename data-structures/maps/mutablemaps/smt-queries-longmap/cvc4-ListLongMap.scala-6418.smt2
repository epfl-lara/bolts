; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82336 () Bool)

(assert start!82336)

(declare-fun b_free!18581 () Bool)

(declare-fun b_next!18581 () Bool)

(assert (=> start!82336 (= b_free!18581 (not b_next!18581))))

(declare-fun tp!64705 () Bool)

(declare-fun b_and!30087 () Bool)

(assert (=> start!82336 (= tp!64705 b_and!30087)))

(declare-fun b!959452 () Bool)

(declare-fun res!642360 () Bool)

(declare-fun e!540875 () Bool)

(assert (=> b!959452 (=> (not res!642360) (not e!540875))))

(declare-datatypes ((array!58681 0))(
  ( (array!58682 (arr!28210 (Array (_ BitVec 32) (_ BitVec 64))) (size!28690 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58681)

(declare-datatypes ((List!19744 0))(
  ( (Nil!19741) (Cons!19740 (h!20902 (_ BitVec 64)) (t!28115 List!19744)) )
))
(declare-fun arrayNoDuplicates!0 (array!58681 (_ BitVec 32) List!19744) Bool)

(assert (=> b!959452 (= res!642360 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19741))))

(declare-fun mapNonEmpty!33910 () Bool)

(declare-fun mapRes!33910 () Bool)

(declare-fun tp!64704 () Bool)

(declare-fun e!540874 () Bool)

(assert (=> mapNonEmpty!33910 (= mapRes!33910 (and tp!64704 e!540874))))

(declare-datatypes ((V!33365 0))(
  ( (V!33366 (val!10694 Int)) )
))
(declare-datatypes ((ValueCell!10162 0))(
  ( (ValueCellFull!10162 (v!13251 V!33365)) (EmptyCell!10162) )
))
(declare-fun mapValue!33910 () ValueCell!10162)

(declare-fun mapKey!33910 () (_ BitVec 32))

(declare-datatypes ((array!58683 0))(
  ( (array!58684 (arr!28211 (Array (_ BitVec 32) ValueCell!10162)) (size!28691 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58683)

(declare-fun mapRest!33910 () (Array (_ BitVec 32) ValueCell!10162))

(assert (=> mapNonEmpty!33910 (= (arr!28211 _values!1386) (store mapRest!33910 mapKey!33910 mapValue!33910))))

(declare-fun b!959453 () Bool)

(declare-fun tp_is_empty!21287 () Bool)

(assert (=> b!959453 (= e!540874 tp_is_empty!21287)))

(declare-fun b!959454 () Bool)

(declare-fun res!642364 () Bool)

(assert (=> b!959454 (=> (not res!642364) (not e!540875))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33365)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33365)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13880 0))(
  ( (tuple2!13881 (_1!6950 (_ BitVec 64)) (_2!6950 V!33365)) )
))
(declare-datatypes ((List!19745 0))(
  ( (Nil!19742) (Cons!19741 (h!20903 tuple2!13880) (t!28116 List!19745)) )
))
(declare-datatypes ((ListLongMap!12591 0))(
  ( (ListLongMap!12592 (toList!6311 List!19745)) )
))
(declare-fun contains!5364 (ListLongMap!12591 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3496 (array!58681 array!58683 (_ BitVec 32) (_ BitVec 32) V!33365 V!33365 (_ BitVec 32) Int) ListLongMap!12591)

(assert (=> b!959454 (= res!642364 (contains!5364 (getCurrentListMap!3496 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28210 _keys!1668) i!793)))))

(declare-fun b!959455 () Bool)

(declare-fun res!642362 () Bool)

(assert (=> b!959455 (=> (not res!642362) (not e!540875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58681 (_ BitVec 32)) Bool)

(assert (=> b!959455 (= res!642362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959456 () Bool)

(declare-fun res!642361 () Bool)

(assert (=> b!959456 (=> (not res!642361) (not e!540875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959456 (= res!642361 (validKeyInArray!0 (select (arr!28210 _keys!1668) i!793)))))

(declare-fun b!959457 () Bool)

(declare-fun e!540877 () Bool)

(assert (=> b!959457 (= e!540877 tp_is_empty!21287)))

(declare-fun res!642365 () Bool)

(assert (=> start!82336 (=> (not res!642365) (not e!540875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82336 (= res!642365 (validMask!0 mask!2088))))

(assert (=> start!82336 e!540875))

(assert (=> start!82336 true))

(assert (=> start!82336 tp_is_empty!21287))

(declare-fun array_inv!21813 (array!58681) Bool)

(assert (=> start!82336 (array_inv!21813 _keys!1668)))

(declare-fun e!540876 () Bool)

(declare-fun array_inv!21814 (array!58683) Bool)

(assert (=> start!82336 (and (array_inv!21814 _values!1386) e!540876)))

(assert (=> start!82336 tp!64705))

(declare-fun b!959458 () Bool)

(declare-fun res!642363 () Bool)

(assert (=> b!959458 (=> (not res!642363) (not e!540875))))

(assert (=> b!959458 (= res!642363 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28690 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28690 _keys!1668))))))

(declare-fun b!959459 () Bool)

(assert (=> b!959459 (= e!540876 (and e!540877 mapRes!33910))))

(declare-fun condMapEmpty!33910 () Bool)

(declare-fun mapDefault!33910 () ValueCell!10162)

