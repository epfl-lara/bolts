; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82178 () Bool)

(assert start!82178)

(declare-fun mapNonEmpty!33673 () Bool)

(declare-fun mapRes!33673 () Bool)

(declare-fun tp!64279 () Bool)

(declare-fun e!539693 () Bool)

(assert (=> mapNonEmpty!33673 (= mapRes!33673 (and tp!64279 e!539693))))

(declare-datatypes ((V!33155 0))(
  ( (V!33156 (val!10615 Int)) )
))
(declare-datatypes ((ValueCell!10083 0))(
  ( (ValueCellFull!10083 (v!13172 V!33155)) (EmptyCell!10083) )
))
(declare-fun mapValue!33673 () ValueCell!10083)

(declare-fun mapKey!33673 () (_ BitVec 32))

(declare-datatypes ((array!58377 0))(
  ( (array!58378 (arr!28058 (Array (_ BitVec 32) ValueCell!10083)) (size!28538 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58377)

(declare-fun mapRest!33673 () (Array (_ BitVec 32) ValueCell!10083))

(assert (=> mapNonEmpty!33673 (= (arr!28058 _values!1386) (store mapRest!33673 mapKey!33673 mapValue!33673))))

(declare-fun b!957359 () Bool)

(declare-fun res!640978 () Bool)

(declare-fun e!539689 () Bool)

(assert (=> b!957359 (=> (not res!640978) (not e!539689))))

(declare-datatypes ((array!58379 0))(
  ( (array!58380 (arr!28059 (Array (_ BitVec 32) (_ BitVec 64))) (size!28539 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58379)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58379 (_ BitVec 32)) Bool)

(assert (=> b!957359 (= res!640978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!33673 () Bool)

(assert (=> mapIsEmpty!33673 mapRes!33673))

(declare-fun b!957360 () Bool)

(assert (=> b!957360 (= e!539689 false)))

(declare-fun lt!430280 () Bool)

(declare-datatypes ((List!19651 0))(
  ( (Nil!19648) (Cons!19647 (h!20809 (_ BitVec 64)) (t!28022 List!19651)) )
))
(declare-fun arrayNoDuplicates!0 (array!58379 (_ BitVec 32) List!19651) Bool)

(assert (=> b!957360 (= lt!430280 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19648))))

(declare-fun b!957361 () Bool)

(declare-fun tp_is_empty!21129 () Bool)

(assert (=> b!957361 (= e!539693 tp_is_empty!21129)))

(declare-fun b!957362 () Bool)

(declare-fun e!539690 () Bool)

(declare-fun e!539692 () Bool)

(assert (=> b!957362 (= e!539690 (and e!539692 mapRes!33673))))

(declare-fun condMapEmpty!33673 () Bool)

(declare-fun mapDefault!33673 () ValueCell!10083)

(assert (=> b!957362 (= condMapEmpty!33673 (= (arr!28058 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10083)) mapDefault!33673)))))

(declare-fun b!957363 () Bool)

(declare-fun res!640979 () Bool)

(assert (=> b!957363 (=> (not res!640979) (not e!539689))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957363 (= res!640979 (and (= (size!28538 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28539 _keys!1668) (size!28538 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!640980 () Bool)

(assert (=> start!82178 (=> (not res!640980) (not e!539689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82178 (= res!640980 (validMask!0 mask!2088))))

(assert (=> start!82178 e!539689))

(assert (=> start!82178 true))

(declare-fun array_inv!21709 (array!58377) Bool)

(assert (=> start!82178 (and (array_inv!21709 _values!1386) e!539690)))

(declare-fun array_inv!21710 (array!58379) Bool)

(assert (=> start!82178 (array_inv!21710 _keys!1668)))

(declare-fun b!957364 () Bool)

(assert (=> b!957364 (= e!539692 tp_is_empty!21129)))

(assert (= (and start!82178 res!640980) b!957363))

(assert (= (and b!957363 res!640979) b!957359))

(assert (= (and b!957359 res!640978) b!957360))

(assert (= (and b!957362 condMapEmpty!33673) mapIsEmpty!33673))

(assert (= (and b!957362 (not condMapEmpty!33673)) mapNonEmpty!33673))

(get-info :version)

(assert (= (and mapNonEmpty!33673 ((_ is ValueCellFull!10083) mapValue!33673)) b!957361))

(assert (= (and b!957362 ((_ is ValueCellFull!10083) mapDefault!33673)) b!957364))

(assert (= start!82178 b!957362))

(declare-fun m!888417 () Bool)

(assert (=> mapNonEmpty!33673 m!888417))

(declare-fun m!888419 () Bool)

(assert (=> b!957359 m!888419))

(declare-fun m!888421 () Bool)

(assert (=> b!957360 m!888421))

(declare-fun m!888423 () Bool)

(assert (=> start!82178 m!888423))

(declare-fun m!888425 () Bool)

(assert (=> start!82178 m!888425))

(declare-fun m!888427 () Bool)

(assert (=> start!82178 m!888427))

(check-sat (not b!957360) (not b!957359) tp_is_empty!21129 (not start!82178) (not mapNonEmpty!33673))
(check-sat)
