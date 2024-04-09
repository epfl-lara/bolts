; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82344 () Bool)

(assert start!82344)

(declare-fun b_free!18583 () Bool)

(declare-fun b_next!18583 () Bool)

(assert (=> start!82344 (= b_free!18583 (not b_next!18583))))

(declare-fun tp!64719 () Bool)

(declare-fun b_and!30089 () Bool)

(assert (=> start!82344 (= tp!64719 b_and!30089)))

(declare-fun res!642415 () Bool)

(declare-fun e!540938 () Bool)

(assert (=> start!82344 (=> (not res!642415) (not e!540938))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82344 (= res!642415 (validMask!0 mask!2088))))

(assert (=> start!82344 e!540938))

(assert (=> start!82344 true))

(declare-fun tp_is_empty!21295 () Bool)

(assert (=> start!82344 tp_is_empty!21295))

(declare-datatypes ((array!58697 0))(
  ( (array!58698 (arr!28218 (Array (_ BitVec 32) (_ BitVec 64))) (size!28698 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58697)

(declare-fun array_inv!21821 (array!58697) Bool)

(assert (=> start!82344 (array_inv!21821 _keys!1668)))

(declare-datatypes ((V!33377 0))(
  ( (V!33378 (val!10698 Int)) )
))
(declare-datatypes ((ValueCell!10166 0))(
  ( (ValueCellFull!10166 (v!13255 V!33377)) (EmptyCell!10166) )
))
(declare-datatypes ((array!58699 0))(
  ( (array!58700 (arr!28219 (Array (_ BitVec 32) ValueCell!10166)) (size!28699 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58699)

(declare-fun e!540937 () Bool)

(declare-fun array_inv!21822 (array!58699) Bool)

(assert (=> start!82344 (and (array_inv!21822 _values!1386) e!540937)))

(assert (=> start!82344 tp!64719))

(declare-fun b!959543 () Bool)

(declare-fun res!642417 () Bool)

(assert (=> b!959543 (=> (not res!642417) (not e!540938))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959543 (= res!642417 (validKeyInArray!0 (select (arr!28218 _keys!1668) i!793)))))

(declare-fun b!959544 () Bool)

(declare-fun e!540936 () Bool)

(assert (=> b!959544 (= e!540936 tp_is_empty!21295)))

(declare-fun b!959545 () Bool)

(declare-fun e!540935 () Bool)

(assert (=> b!959545 (= e!540935 tp_is_empty!21295)))

(declare-fun mapIsEmpty!33922 () Bool)

(declare-fun mapRes!33922 () Bool)

(assert (=> mapIsEmpty!33922 mapRes!33922))

(declare-fun b!959546 () Bool)

(declare-fun res!642418 () Bool)

(assert (=> b!959546 (=> (not res!642418) (not e!540938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58697 (_ BitVec 32)) Bool)

(assert (=> b!959546 (= res!642418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959547 () Bool)

(declare-fun res!642419 () Bool)

(assert (=> b!959547 (=> (not res!642419) (not e!540938))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959547 (= res!642419 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28698 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28698 _keys!1668))))))

(declare-fun b!959548 () Bool)

(assert (=> b!959548 (= e!540938 (bvslt i!793 #b00000000000000000000000000000000))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33377)

(declare-fun minValue!1328 () V!33377)

(declare-datatypes ((tuple2!13882 0))(
  ( (tuple2!13883 (_1!6951 (_ BitVec 64)) (_2!6951 V!33377)) )
))
(declare-datatypes ((List!19748 0))(
  ( (Nil!19745) (Cons!19744 (h!20906 tuple2!13882) (t!28119 List!19748)) )
))
(declare-datatypes ((ListLongMap!12593 0))(
  ( (ListLongMap!12594 (toList!6312 List!19748)) )
))
(declare-fun lt!430511 () ListLongMap!12593)

(declare-fun getCurrentListMap!3497 (array!58697 array!58699 (_ BitVec 32) (_ BitVec 32) V!33377 V!33377 (_ BitVec 32) Int) ListLongMap!12593)

(assert (=> b!959548 (= lt!430511 (getCurrentListMap!3497 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389))))

(declare-fun b!959549 () Bool)

(declare-fun res!642420 () Bool)

(assert (=> b!959549 (=> (not res!642420) (not e!540938))))

(declare-datatypes ((List!19749 0))(
  ( (Nil!19746) (Cons!19745 (h!20907 (_ BitVec 64)) (t!28120 List!19749)) )
))
(declare-fun arrayNoDuplicates!0 (array!58697 (_ BitVec 32) List!19749) Bool)

(assert (=> b!959549 (= res!642420 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19746))))

(declare-fun mapNonEmpty!33922 () Bool)

(declare-fun tp!64720 () Bool)

(assert (=> mapNonEmpty!33922 (= mapRes!33922 (and tp!64720 e!540935))))

(declare-fun mapValue!33922 () ValueCell!10166)

(declare-fun mapKey!33922 () (_ BitVec 32))

(declare-fun mapRest!33922 () (Array (_ BitVec 32) ValueCell!10166))

(assert (=> mapNonEmpty!33922 (= (arr!28219 _values!1386) (store mapRest!33922 mapKey!33922 mapValue!33922))))

(declare-fun b!959550 () Bool)

(assert (=> b!959550 (= e!540937 (and e!540936 mapRes!33922))))

(declare-fun condMapEmpty!33922 () Bool)

(declare-fun mapDefault!33922 () ValueCell!10166)

