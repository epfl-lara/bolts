; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82234 () Bool)

(assert start!82234)

(declare-fun b_free!18479 () Bool)

(declare-fun b_next!18479 () Bool)

(assert (=> start!82234 (= b_free!18479 (not b_next!18479))))

(declare-fun tp!64399 () Bool)

(declare-fun b_and!29985 () Bool)

(assert (=> start!82234 (= tp!64399 b_and!29985)))

(declare-fun b!957995 () Bool)

(declare-fun e!540111 () Bool)

(declare-fun tp_is_empty!21185 () Bool)

(assert (=> b!957995 (= e!540111 tp_is_empty!21185)))

(declare-fun b!957996 () Bool)

(declare-fun e!540112 () Bool)

(assert (=> b!957996 (= e!540112 false)))

(declare-fun lt!430355 () Bool)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33229 0))(
  ( (V!33230 (val!10643 Int)) )
))
(declare-fun minValue!1328 () V!33229)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10111 0))(
  ( (ValueCellFull!10111 (v!13200 V!33229)) (EmptyCell!10111) )
))
(declare-datatypes ((array!58487 0))(
  ( (array!58488 (arr!28113 (Array (_ BitVec 32) ValueCell!10111)) (size!28593 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58487)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33229)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((array!58489 0))(
  ( (array!58490 (arr!28114 (Array (_ BitVec 32) (_ BitVec 64))) (size!28594 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58489)

(declare-datatypes ((tuple2!13808 0))(
  ( (tuple2!13809 (_1!6914 (_ BitVec 64)) (_2!6914 V!33229)) )
))
(declare-datatypes ((List!19675 0))(
  ( (Nil!19672) (Cons!19671 (h!20833 tuple2!13808) (t!28046 List!19675)) )
))
(declare-datatypes ((ListLongMap!12519 0))(
  ( (ListLongMap!12520 (toList!6275 List!19675)) )
))
(declare-fun contains!5328 (ListLongMap!12519 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3460 (array!58489 array!58487 (_ BitVec 32) (_ BitVec 32) V!33229 V!33229 (_ BitVec 32) Int) ListLongMap!12519)

(assert (=> b!957996 (= lt!430355 (contains!5328 (getCurrentListMap!3460 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28114 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33757 () Bool)

(declare-fun mapRes!33757 () Bool)

(declare-fun tp!64398 () Bool)

(declare-fun e!540110 () Bool)

(assert (=> mapNonEmpty!33757 (= mapRes!33757 (and tp!64398 e!540110))))

(declare-fun mapRest!33757 () (Array (_ BitVec 32) ValueCell!10111))

(declare-fun mapValue!33757 () ValueCell!10111)

(declare-fun mapKey!33757 () (_ BitVec 32))

(assert (=> mapNonEmpty!33757 (= (arr!28113 _values!1386) (store mapRest!33757 mapKey!33757 mapValue!33757))))

(declare-fun b!957997 () Bool)

(declare-fun res!641362 () Bool)

(assert (=> b!957997 (=> (not res!641362) (not e!540112))))

(assert (=> b!957997 (= res!641362 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28594 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28594 _keys!1668))))))

(declare-fun b!957998 () Bool)

(declare-fun res!641363 () Bool)

(assert (=> b!957998 (=> (not res!641363) (not e!540112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58489 (_ BitVec 32)) Bool)

(assert (=> b!957998 (= res!641363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957999 () Bool)

(declare-fun e!540113 () Bool)

(assert (=> b!957999 (= e!540113 (and e!540111 mapRes!33757))))

(declare-fun condMapEmpty!33757 () Bool)

(declare-fun mapDefault!33757 () ValueCell!10111)

