; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82208 () Bool)

(assert start!82208)

(declare-fun b!957644 () Bool)

(declare-fun e!539915 () Bool)

(declare-fun tp_is_empty!21159 () Bool)

(assert (=> b!957644 (= e!539915 tp_is_empty!21159)))

(declare-fun b!957645 () Bool)

(declare-fun e!539914 () Bool)

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((array!58435 0))(
  ( (array!58436 (arr!28087 (Array (_ BitVec 32) (_ BitVec 64))) (size!28567 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58435)

(assert (=> b!957645 (= e!539914 (bvsgt from!2064 (size!28567 _keys!1668)))))

(declare-fun mapNonEmpty!33718 () Bool)

(declare-fun mapRes!33718 () Bool)

(declare-fun tp!64324 () Bool)

(assert (=> mapNonEmpty!33718 (= mapRes!33718 (and tp!64324 e!539915))))

(declare-datatypes ((V!33195 0))(
  ( (V!33196 (val!10630 Int)) )
))
(declare-datatypes ((ValueCell!10098 0))(
  ( (ValueCellFull!10098 (v!13187 V!33195)) (EmptyCell!10098) )
))
(declare-fun mapValue!33718 () ValueCell!10098)

(declare-fun mapRest!33718 () (Array (_ BitVec 32) ValueCell!10098))

(declare-fun mapKey!33718 () (_ BitVec 32))

(declare-datatypes ((array!58437 0))(
  ( (array!58438 (arr!28088 (Array (_ BitVec 32) ValueCell!10098)) (size!28568 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58437)

(assert (=> mapNonEmpty!33718 (= (arr!28088 _values!1386) (store mapRest!33718 mapKey!33718 mapValue!33718))))

(declare-fun mapIsEmpty!33718 () Bool)

(assert (=> mapIsEmpty!33718 mapRes!33718))

(declare-fun b!957646 () Bool)

(declare-fun e!539918 () Bool)

(assert (=> b!957646 (= e!539918 tp_is_empty!21159)))

(declare-fun b!957648 () Bool)

(declare-fun res!641129 () Bool)

(assert (=> b!957648 (=> (not res!641129) (not e!539914))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58435 (_ BitVec 32)) Bool)

(assert (=> b!957648 (= res!641129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957649 () Bool)

(declare-fun res!641130 () Bool)

(assert (=> b!957649 (=> (not res!641130) (not e!539914))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957649 (= res!641130 (validKeyInArray!0 (select (arr!28087 _keys!1668) i!793)))))

(declare-fun b!957650 () Bool)

(declare-fun res!641132 () Bool)

(assert (=> b!957650 (=> (not res!641132) (not e!539914))))

(declare-datatypes ((List!19660 0))(
  ( (Nil!19657) (Cons!19656 (h!20818 (_ BitVec 64)) (t!28031 List!19660)) )
))
(declare-fun arrayNoDuplicates!0 (array!58435 (_ BitVec 32) List!19660) Bool)

(assert (=> b!957650 (= res!641132 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19657))))

(declare-fun b!957651 () Bool)

(declare-fun e!539916 () Bool)

(assert (=> b!957651 (= e!539916 (and e!539918 mapRes!33718))))

(declare-fun condMapEmpty!33718 () Bool)

(declare-fun mapDefault!33718 () ValueCell!10098)

(assert (=> b!957651 (= condMapEmpty!33718 (= (arr!28088 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10098)) mapDefault!33718)))))

(declare-fun b!957652 () Bool)

(declare-fun res!641133 () Bool)

(assert (=> b!957652 (=> (not res!641133) (not e!539914))))

(assert (=> b!957652 (= res!641133 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28567 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28567 _keys!1668))))))

(declare-fun b!957647 () Bool)

(declare-fun res!641128 () Bool)

(assert (=> b!957647 (=> (not res!641128) (not e!539914))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957647 (= res!641128 (and (= (size!28568 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28567 _keys!1668) (size!28568 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!641131 () Bool)

(assert (=> start!82208 (=> (not res!641131) (not e!539914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82208 (= res!641131 (validMask!0 mask!2088))))

(assert (=> start!82208 e!539914))

(assert (=> start!82208 true))

(declare-fun array_inv!21731 (array!58435) Bool)

(assert (=> start!82208 (array_inv!21731 _keys!1668)))

(declare-fun array_inv!21732 (array!58437) Bool)

(assert (=> start!82208 (and (array_inv!21732 _values!1386) e!539916)))

(assert (= (and start!82208 res!641131) b!957647))

(assert (= (and b!957647 res!641128) b!957648))

(assert (= (and b!957648 res!641129) b!957650))

(assert (= (and b!957650 res!641132) b!957652))

(assert (= (and b!957652 res!641133) b!957649))

(assert (= (and b!957649 res!641130) b!957645))

(assert (= (and b!957651 condMapEmpty!33718) mapIsEmpty!33718))

(assert (= (and b!957651 (not condMapEmpty!33718)) mapNonEmpty!33718))

(get-info :version)

(assert (= (and mapNonEmpty!33718 ((_ is ValueCellFull!10098) mapValue!33718)) b!957644))

(assert (= (and b!957651 ((_ is ValueCellFull!10098) mapDefault!33718)) b!957646))

(assert (= start!82208 b!957651))

(declare-fun m!888601 () Bool)

(assert (=> b!957650 m!888601))

(declare-fun m!888603 () Bool)

(assert (=> start!82208 m!888603))

(declare-fun m!888605 () Bool)

(assert (=> start!82208 m!888605))

(declare-fun m!888607 () Bool)

(assert (=> start!82208 m!888607))

(declare-fun m!888609 () Bool)

(assert (=> mapNonEmpty!33718 m!888609))

(declare-fun m!888611 () Bool)

(assert (=> b!957648 m!888611))

(declare-fun m!888613 () Bool)

(assert (=> b!957649 m!888613))

(assert (=> b!957649 m!888613))

(declare-fun m!888615 () Bool)

(assert (=> b!957649 m!888615))

(check-sat (not mapNonEmpty!33718) (not b!957649) (not start!82208) tp_is_empty!21159 (not b!957650) (not b!957648))
(check-sat)
