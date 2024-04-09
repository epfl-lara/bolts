; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82528 () Bool)

(assert start!82528)

(declare-fun b!961328 () Bool)

(declare-fun res!643506 () Bool)

(declare-fun e!542082 () Bool)

(assert (=> b!961328 (=> (not res!643506) (not e!542082))))

(declare-datatypes ((array!58967 0))(
  ( (array!58968 (arr!28348 (Array (_ BitVec 32) (_ BitVec 64))) (size!28828 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58967)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58967 (_ BitVec 32)) Bool)

(assert (=> b!961328 (= res!643506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!643508 () Bool)

(assert (=> start!82528 (=> (not res!643508) (not e!542082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82528 (= res!643508 (validMask!0 mask!2110))))

(assert (=> start!82528 e!542082))

(assert (=> start!82528 true))

(declare-datatypes ((V!33563 0))(
  ( (V!33564 (val!10768 Int)) )
))
(declare-datatypes ((ValueCell!10236 0))(
  ( (ValueCellFull!10236 (v!13326 V!33563)) (EmptyCell!10236) )
))
(declare-datatypes ((array!58969 0))(
  ( (array!58970 (arr!28349 (Array (_ BitVec 32) ValueCell!10236)) (size!28829 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58969)

(declare-fun e!542081 () Bool)

(declare-fun array_inv!21895 (array!58969) Bool)

(assert (=> start!82528 (and (array_inv!21895 _values!1400) e!542081)))

(declare-fun array_inv!21896 (array!58967) Bool)

(assert (=> start!82528 (array_inv!21896 _keys!1686)))

(declare-fun b!961329 () Bool)

(declare-fun res!643507 () Bool)

(assert (=> b!961329 (=> (not res!643507) (not e!542082))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961329 (= res!643507 (and (= (size!28829 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28828 _keys!1686) (size!28829 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961330 () Bool)

(declare-fun e!542083 () Bool)

(declare-fun tp_is_empty!21435 () Bool)

(assert (=> b!961330 (= e!542083 tp_is_empty!21435)))

(declare-fun b!961331 () Bool)

(assert (=> b!961331 (= e!542082 false)))

(declare-fun lt!430707 () Bool)

(declare-datatypes ((List!19810 0))(
  ( (Nil!19807) (Cons!19806 (h!20968 (_ BitVec 64)) (t!28181 List!19810)) )
))
(declare-fun arrayNoDuplicates!0 (array!58967 (_ BitVec 32) List!19810) Bool)

(assert (=> b!961331 (= lt!430707 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19807))))

(declare-fun b!961332 () Bool)

(declare-fun e!542080 () Bool)

(declare-fun mapRes!34147 () Bool)

(assert (=> b!961332 (= e!542081 (and e!542080 mapRes!34147))))

(declare-fun condMapEmpty!34147 () Bool)

(declare-fun mapDefault!34147 () ValueCell!10236)

(assert (=> b!961332 (= condMapEmpty!34147 (= (arr!28349 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10236)) mapDefault!34147)))))

(declare-fun mapIsEmpty!34147 () Bool)

(assert (=> mapIsEmpty!34147 mapRes!34147))

(declare-fun mapNonEmpty!34147 () Bool)

(declare-fun tp!65077 () Bool)

(assert (=> mapNonEmpty!34147 (= mapRes!34147 (and tp!65077 e!542083))))

(declare-fun mapKey!34147 () (_ BitVec 32))

(declare-fun mapRest!34147 () (Array (_ BitVec 32) ValueCell!10236))

(declare-fun mapValue!34147 () ValueCell!10236)

(assert (=> mapNonEmpty!34147 (= (arr!28349 _values!1400) (store mapRest!34147 mapKey!34147 mapValue!34147))))

(declare-fun b!961333 () Bool)

(assert (=> b!961333 (= e!542080 tp_is_empty!21435)))

(assert (= (and start!82528 res!643508) b!961329))

(assert (= (and b!961329 res!643507) b!961328))

(assert (= (and b!961328 res!643506) b!961331))

(assert (= (and b!961332 condMapEmpty!34147) mapIsEmpty!34147))

(assert (= (and b!961332 (not condMapEmpty!34147)) mapNonEmpty!34147))

(get-info :version)

(assert (= (and mapNonEmpty!34147 ((_ is ValueCellFull!10236) mapValue!34147)) b!961330))

(assert (= (and b!961332 ((_ is ValueCellFull!10236) mapDefault!34147)) b!961333))

(assert (= start!82528 b!961332))

(declare-fun m!891373 () Bool)

(assert (=> b!961328 m!891373))

(declare-fun m!891375 () Bool)

(assert (=> start!82528 m!891375))

(declare-fun m!891377 () Bool)

(assert (=> start!82528 m!891377))

(declare-fun m!891379 () Bool)

(assert (=> start!82528 m!891379))

(declare-fun m!891381 () Bool)

(assert (=> b!961331 m!891381))

(declare-fun m!891383 () Bool)

(assert (=> mapNonEmpty!34147 m!891383))

(check-sat (not b!961328) (not start!82528) (not mapNonEmpty!34147) tp_is_empty!21435 (not b!961331))
(check-sat)
