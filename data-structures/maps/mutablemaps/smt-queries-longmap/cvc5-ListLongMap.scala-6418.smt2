; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82332 () Bool)

(assert start!82332)

(declare-fun b_free!18577 () Bool)

(declare-fun b_next!18577 () Bool)

(assert (=> start!82332 (= b_free!18577 (not b_next!18577))))

(declare-fun tp!64693 () Bool)

(declare-fun b_and!30083 () Bool)

(assert (=> start!82332 (= tp!64693 b_and!30083)))

(declare-fun b!959392 () Bool)

(declare-fun res!642322 () Bool)

(declare-fun e!540845 () Bool)

(assert (=> b!959392 (=> (not res!642322) (not e!540845))))

(declare-datatypes ((array!58673 0))(
  ( (array!58674 (arr!28206 (Array (_ BitVec 32) (_ BitVec 64))) (size!28686 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58673)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58673 (_ BitVec 32)) Bool)

(assert (=> b!959392 (= res!642322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959393 () Bool)

(declare-fun res!642324 () Bool)

(assert (=> b!959393 (=> (not res!642324) (not e!540845))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33361 0))(
  ( (V!33362 (val!10692 Int)) )
))
(declare-datatypes ((ValueCell!10160 0))(
  ( (ValueCellFull!10160 (v!13249 V!33361)) (EmptyCell!10160) )
))
(declare-datatypes ((array!58675 0))(
  ( (array!58676 (arr!28207 (Array (_ BitVec 32) ValueCell!10160)) (size!28687 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58675)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33361)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33361)

(declare-datatypes ((tuple2!13876 0))(
  ( (tuple2!13877 (_1!6948 (_ BitVec 64)) (_2!6948 V!33361)) )
))
(declare-datatypes ((List!19740 0))(
  ( (Nil!19737) (Cons!19736 (h!20898 tuple2!13876) (t!28111 List!19740)) )
))
(declare-datatypes ((ListLongMap!12587 0))(
  ( (ListLongMap!12588 (toList!6309 List!19740)) )
))
(declare-fun contains!5362 (ListLongMap!12587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3494 (array!58673 array!58675 (_ BitVec 32) (_ BitVec 32) V!33361 V!33361 (_ BitVec 32) Int) ListLongMap!12587)

(assert (=> b!959393 (= res!642324 (contains!5362 (getCurrentListMap!3494 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28206 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33904 () Bool)

(declare-fun mapRes!33904 () Bool)

(declare-fun tp!64692 () Bool)

(declare-fun e!540848 () Bool)

(assert (=> mapNonEmpty!33904 (= mapRes!33904 (and tp!64692 e!540848))))

(declare-fun mapValue!33904 () ValueCell!10160)

(declare-fun mapKey!33904 () (_ BitVec 32))

(declare-fun mapRest!33904 () (Array (_ BitVec 32) ValueCell!10160))

(assert (=> mapNonEmpty!33904 (= (arr!28207 _values!1386) (store mapRest!33904 mapKey!33904 mapValue!33904))))

(declare-fun b!959394 () Bool)

(declare-fun res!642318 () Bool)

(assert (=> b!959394 (=> (not res!642318) (not e!540845))))

(assert (=> b!959394 (= res!642318 (and (= (size!28687 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28686 _keys!1668) (size!28687 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959395 () Bool)

(declare-fun e!540847 () Bool)

(declare-fun tp_is_empty!21283 () Bool)

(assert (=> b!959395 (= e!540847 tp_is_empty!21283)))

(declare-fun b!959396 () Bool)

(declare-fun res!642320 () Bool)

(assert (=> b!959396 (=> (not res!642320) (not e!540845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959396 (= res!642320 (validKeyInArray!0 (select (arr!28206 _keys!1668) i!793)))))

(declare-fun res!642319 () Bool)

(assert (=> start!82332 (=> (not res!642319) (not e!540845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82332 (= res!642319 (validMask!0 mask!2088))))

(assert (=> start!82332 e!540845))

(assert (=> start!82332 true))

(assert (=> start!82332 tp_is_empty!21283))

(declare-fun array_inv!21809 (array!58673) Bool)

(assert (=> start!82332 (array_inv!21809 _keys!1668)))

(declare-fun e!540846 () Bool)

(declare-fun array_inv!21810 (array!58675) Bool)

(assert (=> start!82332 (and (array_inv!21810 _values!1386) e!540846)))

(assert (=> start!82332 tp!64693))

(declare-fun b!959397 () Bool)

(assert (=> b!959397 (= e!540848 tp_is_empty!21283)))

(declare-fun b!959398 () Bool)

(declare-fun res!642321 () Bool)

(assert (=> b!959398 (=> (not res!642321) (not e!540845))))

(declare-datatypes ((List!19741 0))(
  ( (Nil!19738) (Cons!19737 (h!20899 (_ BitVec 64)) (t!28112 List!19741)) )
))
(declare-fun arrayNoDuplicates!0 (array!58673 (_ BitVec 32) List!19741) Bool)

(assert (=> b!959398 (= res!642321 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19738))))

(declare-fun mapIsEmpty!33904 () Bool)

(assert (=> mapIsEmpty!33904 mapRes!33904))

(declare-fun b!959399 () Bool)

(declare-fun res!642323 () Bool)

(assert (=> b!959399 (=> (not res!642323) (not e!540845))))

(assert (=> b!959399 (= res!642323 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28686 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28686 _keys!1668))))))

(declare-fun b!959400 () Bool)

(assert (=> b!959400 (= e!540846 (and e!540847 mapRes!33904))))

(declare-fun condMapEmpty!33904 () Bool)

(declare-fun mapDefault!33904 () ValueCell!10160)

