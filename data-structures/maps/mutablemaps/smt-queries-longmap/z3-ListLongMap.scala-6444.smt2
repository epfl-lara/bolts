; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82534 () Bool)

(assert start!82534)

(declare-fun b!961382 () Bool)

(declare-fun e!542127 () Bool)

(declare-fun tp_is_empty!21441 () Bool)

(assert (=> b!961382 (= e!542127 tp_is_empty!21441)))

(declare-fun b!961383 () Bool)

(declare-fun e!542124 () Bool)

(declare-fun e!542128 () Bool)

(declare-fun mapRes!34156 () Bool)

(assert (=> b!961383 (= e!542124 (and e!542128 mapRes!34156))))

(declare-fun condMapEmpty!34156 () Bool)

(declare-datatypes ((V!33571 0))(
  ( (V!33572 (val!10771 Int)) )
))
(declare-datatypes ((ValueCell!10239 0))(
  ( (ValueCellFull!10239 (v!13329 V!33571)) (EmptyCell!10239) )
))
(declare-datatypes ((array!58977 0))(
  ( (array!58978 (arr!28353 (Array (_ BitVec 32) ValueCell!10239)) (size!28833 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58977)

(declare-fun mapDefault!34156 () ValueCell!10239)

(assert (=> b!961383 (= condMapEmpty!34156 (= (arr!28353 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10239)) mapDefault!34156)))))

(declare-fun mapNonEmpty!34156 () Bool)

(declare-fun tp!65086 () Bool)

(assert (=> mapNonEmpty!34156 (= mapRes!34156 (and tp!65086 e!542127))))

(declare-fun mapKey!34156 () (_ BitVec 32))

(declare-fun mapValue!34156 () ValueCell!10239)

(declare-fun mapRest!34156 () (Array (_ BitVec 32) ValueCell!10239))

(assert (=> mapNonEmpty!34156 (= (arr!28353 _values!1400) (store mapRest!34156 mapKey!34156 mapValue!34156))))

(declare-fun b!961384 () Bool)

(declare-fun res!643533 () Bool)

(declare-fun e!542126 () Bool)

(assert (=> b!961384 (=> (not res!643533) (not e!542126))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!58979 0))(
  ( (array!58980 (arr!28354 (Array (_ BitVec 32) (_ BitVec 64))) (size!28834 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58979)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961384 (= res!643533 (and (= (size!28833 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28834 _keys!1686) (size!28833 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961386 () Bool)

(assert (=> b!961386 (= e!542126 false)))

(declare-fun lt!430716 () Bool)

(declare-datatypes ((List!19812 0))(
  ( (Nil!19809) (Cons!19808 (h!20970 (_ BitVec 64)) (t!28183 List!19812)) )
))
(declare-fun arrayNoDuplicates!0 (array!58979 (_ BitVec 32) List!19812) Bool)

(assert (=> b!961386 (= lt!430716 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19809))))

(declare-fun mapIsEmpty!34156 () Bool)

(assert (=> mapIsEmpty!34156 mapRes!34156))

(declare-fun b!961387 () Bool)

(assert (=> b!961387 (= e!542128 tp_is_empty!21441)))

(declare-fun res!643535 () Bool)

(assert (=> start!82534 (=> (not res!643535) (not e!542126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82534 (= res!643535 (validMask!0 mask!2110))))

(assert (=> start!82534 e!542126))

(assert (=> start!82534 true))

(declare-fun array_inv!21897 (array!58977) Bool)

(assert (=> start!82534 (and (array_inv!21897 _values!1400) e!542124)))

(declare-fun array_inv!21898 (array!58979) Bool)

(assert (=> start!82534 (array_inv!21898 _keys!1686)))

(declare-fun b!961385 () Bool)

(declare-fun res!643534 () Bool)

(assert (=> b!961385 (=> (not res!643534) (not e!542126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58979 (_ BitVec 32)) Bool)

(assert (=> b!961385 (= res!643534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82534 res!643535) b!961384))

(assert (= (and b!961384 res!643533) b!961385))

(assert (= (and b!961385 res!643534) b!961386))

(assert (= (and b!961383 condMapEmpty!34156) mapIsEmpty!34156))

(assert (= (and b!961383 (not condMapEmpty!34156)) mapNonEmpty!34156))

(get-info :version)

(assert (= (and mapNonEmpty!34156 ((_ is ValueCellFull!10239) mapValue!34156)) b!961382))

(assert (= (and b!961383 ((_ is ValueCellFull!10239) mapDefault!34156)) b!961387))

(assert (= start!82534 b!961383))

(declare-fun m!891409 () Bool)

(assert (=> mapNonEmpty!34156 m!891409))

(declare-fun m!891411 () Bool)

(assert (=> b!961386 m!891411))

(declare-fun m!891413 () Bool)

(assert (=> start!82534 m!891413))

(declare-fun m!891415 () Bool)

(assert (=> start!82534 m!891415))

(declare-fun m!891417 () Bool)

(assert (=> start!82534 m!891417))

(declare-fun m!891419 () Bool)

(assert (=> b!961385 m!891419))

(check-sat (not mapNonEmpty!34156) (not b!961385) (not b!961386) tp_is_empty!21441 (not start!82534))
(check-sat)
