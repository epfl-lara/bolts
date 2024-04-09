; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82402 () Bool)

(assert start!82402)

(declare-fun b_free!18641 () Bool)

(declare-fun b_next!18641 () Bool)

(assert (=> start!82402 (= b_free!18641 (not b_next!18641))))

(declare-fun tp!64894 () Bool)

(declare-fun b_and!30147 () Bool)

(assert (=> start!82402 (= tp!64894 b_and!30147)))

(declare-fun res!642938 () Bool)

(declare-fun e!541370 () Bool)

(assert (=> start!82402 (=> (not res!642938) (not e!541370))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82402 (= res!642938 (validMask!0 mask!2088))))

(assert (=> start!82402 e!541370))

(assert (=> start!82402 true))

(declare-fun tp_is_empty!21353 () Bool)

(assert (=> start!82402 tp_is_empty!21353))

(declare-datatypes ((array!58807 0))(
  ( (array!58808 (arr!28273 (Array (_ BitVec 32) (_ BitVec 64))) (size!28753 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58807)

(declare-fun array_inv!21849 (array!58807) Bool)

(assert (=> start!82402 (array_inv!21849 _keys!1668)))

(declare-datatypes ((V!33453 0))(
  ( (V!33454 (val!10727 Int)) )
))
(declare-datatypes ((ValueCell!10195 0))(
  ( (ValueCellFull!10195 (v!13284 V!33453)) (EmptyCell!10195) )
))
(declare-datatypes ((array!58809 0))(
  ( (array!58810 (arr!28274 (Array (_ BitVec 32) ValueCell!10195)) (size!28754 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58809)

(declare-fun e!541373 () Bool)

(declare-fun array_inv!21850 (array!58809) Bool)

(assert (=> start!82402 (and (array_inv!21850 _values!1386) e!541373)))

(assert (=> start!82402 tp!64894))

(declare-fun mapNonEmpty!34009 () Bool)

(declare-fun mapRes!34009 () Bool)

(declare-fun tp!64893 () Bool)

(declare-fun e!541369 () Bool)

(assert (=> mapNonEmpty!34009 (= mapRes!34009 (and tp!64893 e!541369))))

(declare-fun mapRest!34009 () (Array (_ BitVec 32) ValueCell!10195))

(declare-fun mapValue!34009 () ValueCell!10195)

(declare-fun mapKey!34009 () (_ BitVec 32))

(assert (=> mapNonEmpty!34009 (= (arr!28274 _values!1386) (store mapRest!34009 mapKey!34009 mapValue!34009))))

(declare-fun b!960326 () Bool)

(declare-fun e!541372 () Bool)

(assert (=> b!960326 (= e!541372 tp_is_empty!21353)))

(declare-fun b!960327 () Bool)

(assert (=> b!960327 (= e!541369 tp_is_empty!21353)))

(declare-fun b!960328 () Bool)

(declare-fun res!642940 () Bool)

(assert (=> b!960328 (=> (not res!642940) (not e!541370))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!960328 (= res!642940 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28753 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28753 _keys!1668))))))

(declare-fun b!960329 () Bool)

(declare-fun res!642941 () Bool)

(assert (=> b!960329 (=> (not res!642941) (not e!541370))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!960329 (= res!642941 (and (= (size!28754 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28753 _keys!1668) (size!28754 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34009 () Bool)

(assert (=> mapIsEmpty!34009 mapRes!34009))

(declare-fun b!960330 () Bool)

(assert (=> b!960330 (= e!541370 false)))

(declare-fun minValue!1328 () V!33453)

(declare-fun lt!430598 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33453)

(declare-datatypes ((tuple2!13918 0))(
  ( (tuple2!13919 (_1!6969 (_ BitVec 64)) (_2!6969 V!33453)) )
))
(declare-datatypes ((List!19781 0))(
  ( (Nil!19778) (Cons!19777 (h!20939 tuple2!13918) (t!28152 List!19781)) )
))
(declare-datatypes ((ListLongMap!12629 0))(
  ( (ListLongMap!12630 (toList!6330 List!19781)) )
))
(declare-fun contains!5380 (ListLongMap!12629 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3515 (array!58807 array!58809 (_ BitVec 32) (_ BitVec 32) V!33453 V!33453 (_ BitVec 32) Int) ListLongMap!12629)

(assert (=> b!960330 (= lt!430598 (contains!5380 (getCurrentListMap!3515 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28273 _keys!1668) i!793)))))

(declare-fun b!960331 () Bool)

(declare-fun res!642942 () Bool)

(assert (=> b!960331 (=> (not res!642942) (not e!541370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58807 (_ BitVec 32)) Bool)

(assert (=> b!960331 (= res!642942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960332 () Bool)

(assert (=> b!960332 (= e!541373 (and e!541372 mapRes!34009))))

(declare-fun condMapEmpty!34009 () Bool)

(declare-fun mapDefault!34009 () ValueCell!10195)

