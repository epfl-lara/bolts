; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20090 () Bool)

(assert start!20090)

(declare-fun b!196564 () Bool)

(declare-fun e!129488 () Bool)

(declare-fun tp_is_empty!4593 () Bool)

(assert (=> b!196564 (= e!129488 tp_is_empty!4593)))

(declare-fun b!196565 () Bool)

(declare-fun res!92802 () Bool)

(declare-fun e!129487 () Bool)

(assert (=> b!196565 (=> (not res!92802) (not e!129487))))

(declare-datatypes ((array!8442 0))(
  ( (array!8443 (arr!3971 (Array (_ BitVec 32) (_ BitVec 64))) (size!4296 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8442)

(declare-datatypes ((List!2500 0))(
  ( (Nil!2497) (Cons!2496 (h!3138 (_ BitVec 64)) (t!7439 List!2500)) )
))
(declare-fun arrayNoDuplicates!0 (array!8442 (_ BitVec 32) List!2500) Bool)

(assert (=> b!196565 (= res!92802 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2497))))

(declare-fun b!196566 () Bool)

(declare-fun res!92803 () Bool)

(assert (=> b!196566 (=> (not res!92803) (not e!129487))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196566 (= res!92803 (validKeyInArray!0 k0!843))))

(declare-fun b!196567 () Bool)

(declare-fun res!92805 () Bool)

(assert (=> b!196567 (=> (not res!92805) (not e!129487))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8442 (_ BitVec 32)) Bool)

(assert (=> b!196567 (= res!92805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196568 () Bool)

(declare-fun res!92801 () Bool)

(assert (=> b!196568 (=> (not res!92801) (not e!129487))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5771 0))(
  ( (V!5772 (val!2341 Int)) )
))
(declare-datatypes ((ValueCell!1953 0))(
  ( (ValueCellFull!1953 (v!4307 V!5771)) (EmptyCell!1953) )
))
(declare-datatypes ((array!8444 0))(
  ( (array!8445 (arr!3972 (Array (_ BitVec 32) ValueCell!1953)) (size!4297 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8444)

(assert (=> b!196568 (= res!92801 (and (= (size!4297 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4296 _keys!825) (size!4297 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196569 () Bool)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196569 (= e!129487 (and (= (select (arr!3971 _keys!825) i!601) k0!843) (bvsgt #b00000000000000000000000000000000 (size!4296 _keys!825))))))

(declare-fun res!92806 () Bool)

(assert (=> start!20090 (=> (not res!92806) (not e!129487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20090 (= res!92806 (validMask!0 mask!1149))))

(assert (=> start!20090 e!129487))

(declare-fun array_inv!2581 (array!8442) Bool)

(assert (=> start!20090 (array_inv!2581 _keys!825)))

(assert (=> start!20090 true))

(declare-fun e!129486 () Bool)

(declare-fun array_inv!2582 (array!8444) Bool)

(assert (=> start!20090 (and (array_inv!2582 _values!649) e!129486)))

(declare-fun b!196570 () Bool)

(declare-fun e!129489 () Bool)

(declare-fun mapRes!7958 () Bool)

(assert (=> b!196570 (= e!129486 (and e!129489 mapRes!7958))))

(declare-fun condMapEmpty!7958 () Bool)

(declare-fun mapDefault!7958 () ValueCell!1953)

(assert (=> b!196570 (= condMapEmpty!7958 (= (arr!3972 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1953)) mapDefault!7958)))))

(declare-fun b!196571 () Bool)

(assert (=> b!196571 (= e!129489 tp_is_empty!4593)))

(declare-fun mapIsEmpty!7958 () Bool)

(assert (=> mapIsEmpty!7958 mapRes!7958))

(declare-fun mapNonEmpty!7958 () Bool)

(declare-fun tp!17246 () Bool)

(assert (=> mapNonEmpty!7958 (= mapRes!7958 (and tp!17246 e!129488))))

(declare-fun mapKey!7958 () (_ BitVec 32))

(declare-fun mapRest!7958 () (Array (_ BitVec 32) ValueCell!1953))

(declare-fun mapValue!7958 () ValueCell!1953)

(assert (=> mapNonEmpty!7958 (= (arr!3972 _values!649) (store mapRest!7958 mapKey!7958 mapValue!7958))))

(declare-fun b!196572 () Bool)

(declare-fun res!92804 () Bool)

(assert (=> b!196572 (=> (not res!92804) (not e!129487))))

(assert (=> b!196572 (= res!92804 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4296 _keys!825))))))

(assert (= (and start!20090 res!92806) b!196568))

(assert (= (and b!196568 res!92801) b!196567))

(assert (= (and b!196567 res!92805) b!196565))

(assert (= (and b!196565 res!92802) b!196572))

(assert (= (and b!196572 res!92804) b!196566))

(assert (= (and b!196566 res!92803) b!196569))

(assert (= (and b!196570 condMapEmpty!7958) mapIsEmpty!7958))

(assert (= (and b!196570 (not condMapEmpty!7958)) mapNonEmpty!7958))

(get-info :version)

(assert (= (and mapNonEmpty!7958 ((_ is ValueCellFull!1953) mapValue!7958)) b!196564))

(assert (= (and b!196570 ((_ is ValueCellFull!1953) mapDefault!7958)) b!196571))

(assert (= start!20090 b!196570))

(declare-fun m!223801 () Bool)

(assert (=> b!196565 m!223801))

(declare-fun m!223803 () Bool)

(assert (=> b!196567 m!223803))

(declare-fun m!223805 () Bool)

(assert (=> mapNonEmpty!7958 m!223805))

(declare-fun m!223807 () Bool)

(assert (=> b!196566 m!223807))

(declare-fun m!223809 () Bool)

(assert (=> b!196569 m!223809))

(declare-fun m!223811 () Bool)

(assert (=> start!20090 m!223811))

(declare-fun m!223813 () Bool)

(assert (=> start!20090 m!223813))

(declare-fun m!223815 () Bool)

(assert (=> start!20090 m!223815))

(check-sat (not b!196565) (not b!196566) tp_is_empty!4593 (not start!20090) (not b!196567) (not mapNonEmpty!7958))
(check-sat)
