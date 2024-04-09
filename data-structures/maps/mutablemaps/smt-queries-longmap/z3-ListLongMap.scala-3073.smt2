; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43300 () Bool)

(assert start!43300)

(declare-fun b_free!12159 () Bool)

(declare-fun b_next!12159 () Bool)

(assert (=> start!43300 (= b_free!12159 (not b_next!12159))))

(declare-fun tp!42748 () Bool)

(declare-fun b_and!20929 () Bool)

(assert (=> start!43300 (= tp!42748 b_and!20929)))

(declare-fun mapIsEmpty!22204 () Bool)

(declare-fun mapRes!22204 () Bool)

(assert (=> mapIsEmpty!22204 mapRes!22204))

(declare-fun b!479441 () Bool)

(declare-fun res!286058 () Bool)

(declare-fun e!282099 () Bool)

(assert (=> b!479441 (=> (not res!286058) (not e!282099))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30979 0))(
  ( (array!30980 (arr!14893 (Array (_ BitVec 32) (_ BitVec 64))) (size!15251 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30979)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19299 0))(
  ( (V!19300 (val!6883 Int)) )
))
(declare-datatypes ((ValueCell!6474 0))(
  ( (ValueCellFull!6474 (v!9168 V!19299)) (EmptyCell!6474) )
))
(declare-datatypes ((array!30981 0))(
  ( (array!30982 (arr!14894 (Array (_ BitVec 32) ValueCell!6474)) (size!15252 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30981)

(assert (=> b!479441 (= res!286058 (and (= (size!15252 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15251 _keys!1874) (size!15252 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479442 () Bool)

(declare-fun e!282101 () Bool)

(declare-fun tp_is_empty!13671 () Bool)

(assert (=> b!479442 (= e!282101 tp_is_empty!13671)))

(declare-fun mapNonEmpty!22204 () Bool)

(declare-fun tp!42747 () Bool)

(assert (=> mapNonEmpty!22204 (= mapRes!22204 (and tp!42747 e!282101))))

(declare-fun mapValue!22204 () ValueCell!6474)

(declare-fun mapKey!22204 () (_ BitVec 32))

(declare-fun mapRest!22204 () (Array (_ BitVec 32) ValueCell!6474))

(assert (=> mapNonEmpty!22204 (= (arr!14894 _values!1516) (store mapRest!22204 mapKey!22204 mapValue!22204))))

(declare-fun b!479443 () Bool)

(declare-fun res!286059 () Bool)

(assert (=> b!479443 (=> (not res!286059) (not e!282099))))

(declare-datatypes ((List!9140 0))(
  ( (Nil!9137) (Cons!9136 (h!9992 (_ BitVec 64)) (t!15354 List!9140)) )
))
(declare-fun arrayNoDuplicates!0 (array!30979 (_ BitVec 32) List!9140) Bool)

(assert (=> b!479443 (= res!286059 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9137))))

(declare-fun b!479444 () Bool)

(assert (=> b!479444 (= e!282099 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!217853 () Bool)

(declare-fun minValue!1458 () V!19299)

(declare-fun zeroValue!1458 () V!19299)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9028 0))(
  ( (tuple2!9029 (_1!4524 (_ BitVec 64)) (_2!4524 V!19299)) )
))
(declare-datatypes ((List!9141 0))(
  ( (Nil!9138) (Cons!9137 (h!9993 tuple2!9028) (t!15355 List!9141)) )
))
(declare-datatypes ((ListLongMap!7955 0))(
  ( (ListLongMap!7956 (toList!3993 List!9141)) )
))
(declare-fun contains!2600 (ListLongMap!7955 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2285 (array!30979 array!30981 (_ BitVec 32) (_ BitVec 32) V!19299 V!19299 (_ BitVec 32) Int) ListLongMap!7955)

(assert (=> b!479444 (= lt!217853 (contains!2600 (getCurrentListMap!2285 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun res!286056 () Bool)

(assert (=> start!43300 (=> (not res!286056) (not e!282099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43300 (= res!286056 (validMask!0 mask!2352))))

(assert (=> start!43300 e!282099))

(assert (=> start!43300 true))

(assert (=> start!43300 tp_is_empty!13671))

(declare-fun e!282100 () Bool)

(declare-fun array_inv!10728 (array!30981) Bool)

(assert (=> start!43300 (and (array_inv!10728 _values!1516) e!282100)))

(assert (=> start!43300 tp!42748))

(declare-fun array_inv!10729 (array!30979) Bool)

(assert (=> start!43300 (array_inv!10729 _keys!1874)))

(declare-fun b!479445 () Bool)

(declare-fun res!286057 () Bool)

(assert (=> b!479445 (=> (not res!286057) (not e!282099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30979 (_ BitVec 32)) Bool)

(assert (=> b!479445 (= res!286057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479446 () Bool)

(declare-fun e!282102 () Bool)

(assert (=> b!479446 (= e!282100 (and e!282102 mapRes!22204))))

(declare-fun condMapEmpty!22204 () Bool)

(declare-fun mapDefault!22204 () ValueCell!6474)

(assert (=> b!479446 (= condMapEmpty!22204 (= (arr!14894 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6474)) mapDefault!22204)))))

(declare-fun b!479447 () Bool)

(assert (=> b!479447 (= e!282102 tp_is_empty!13671)))

(assert (= (and start!43300 res!286056) b!479441))

(assert (= (and b!479441 res!286058) b!479445))

(assert (= (and b!479445 res!286057) b!479443))

(assert (= (and b!479443 res!286059) b!479444))

(assert (= (and b!479446 condMapEmpty!22204) mapIsEmpty!22204))

(assert (= (and b!479446 (not condMapEmpty!22204)) mapNonEmpty!22204))

(get-info :version)

(assert (= (and mapNonEmpty!22204 ((_ is ValueCellFull!6474) mapValue!22204)) b!479442))

(assert (= (and b!479446 ((_ is ValueCellFull!6474) mapDefault!22204)) b!479447))

(assert (= start!43300 b!479446))

(declare-fun m!461375 () Bool)

(assert (=> b!479444 m!461375))

(assert (=> b!479444 m!461375))

(declare-fun m!461377 () Bool)

(assert (=> b!479444 m!461377))

(declare-fun m!461379 () Bool)

(assert (=> b!479443 m!461379))

(declare-fun m!461381 () Bool)

(assert (=> mapNonEmpty!22204 m!461381))

(declare-fun m!461383 () Bool)

(assert (=> start!43300 m!461383))

(declare-fun m!461385 () Bool)

(assert (=> start!43300 m!461385))

(declare-fun m!461387 () Bool)

(assert (=> start!43300 m!461387))

(declare-fun m!461389 () Bool)

(assert (=> b!479445 m!461389))

(check-sat tp_is_empty!13671 b_and!20929 (not b!479445) (not b_next!12159) (not mapNonEmpty!22204) (not start!43300) (not b!479444) (not b!479443))
(check-sat b_and!20929 (not b_next!12159))
