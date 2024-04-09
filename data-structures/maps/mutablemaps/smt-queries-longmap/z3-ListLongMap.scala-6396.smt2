; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82202 () Bool)

(assert start!82202)

(declare-fun mapIsEmpty!33709 () Bool)

(declare-fun mapRes!33709 () Bool)

(assert (=> mapIsEmpty!33709 mapRes!33709))

(declare-fun b!957575 () Bool)

(declare-fun e!539871 () Bool)

(declare-fun tp_is_empty!21153 () Bool)

(assert (=> b!957575 (= e!539871 tp_is_empty!21153)))

(declare-fun b!957576 () Bool)

(declare-fun e!539872 () Bool)

(assert (=> b!957576 (= e!539872 (and e!539871 mapRes!33709))))

(declare-fun condMapEmpty!33709 () Bool)

(declare-datatypes ((V!33187 0))(
  ( (V!33188 (val!10627 Int)) )
))
(declare-datatypes ((ValueCell!10095 0))(
  ( (ValueCellFull!10095 (v!13184 V!33187)) (EmptyCell!10095) )
))
(declare-datatypes ((array!58423 0))(
  ( (array!58424 (arr!28081 (Array (_ BitVec 32) ValueCell!10095)) (size!28561 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58423)

(declare-fun mapDefault!33709 () ValueCell!10095)

(assert (=> b!957576 (= condMapEmpty!33709 (= (arr!28081 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10095)) mapDefault!33709)))))

(declare-fun b!957577 () Bool)

(declare-fun e!539870 () Bool)

(assert (=> b!957577 (= e!539870 tp_is_empty!21153)))

(declare-fun mapNonEmpty!33709 () Bool)

(declare-fun tp!64315 () Bool)

(assert (=> mapNonEmpty!33709 (= mapRes!33709 (and tp!64315 e!539870))))

(declare-fun mapRest!33709 () (Array (_ BitVec 32) ValueCell!10095))

(declare-fun mapKey!33709 () (_ BitVec 32))

(declare-fun mapValue!33709 () ValueCell!10095)

(assert (=> mapNonEmpty!33709 (= (arr!28081 _values!1386) (store mapRest!33709 mapKey!33709 mapValue!33709))))

(declare-fun res!641088 () Bool)

(declare-fun e!539873 () Bool)

(assert (=> start!82202 (=> (not res!641088) (not e!539873))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82202 (= res!641088 (validMask!0 mask!2088))))

(assert (=> start!82202 e!539873))

(assert (=> start!82202 true))

(declare-fun array_inv!21725 (array!58423) Bool)

(assert (=> start!82202 (and (array_inv!21725 _values!1386) e!539872)))

(declare-datatypes ((array!58425 0))(
  ( (array!58426 (arr!28082 (Array (_ BitVec 32) (_ BitVec 64))) (size!28562 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58425)

(declare-fun array_inv!21726 (array!58425) Bool)

(assert (=> start!82202 (array_inv!21726 _keys!1668)))

(declare-fun b!957578 () Bool)

(assert (=> b!957578 (= e!539873 false)))

(declare-fun lt!430316 () Bool)

(declare-datatypes ((List!19657 0))(
  ( (Nil!19654) (Cons!19653 (h!20815 (_ BitVec 64)) (t!28028 List!19657)) )
))
(declare-fun arrayNoDuplicates!0 (array!58425 (_ BitVec 32) List!19657) Bool)

(assert (=> b!957578 (= lt!430316 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19654))))

(declare-fun b!957579 () Bool)

(declare-fun res!641087 () Bool)

(assert (=> b!957579 (=> (not res!641087) (not e!539873))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957579 (= res!641087 (and (= (size!28561 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28562 _keys!1668) (size!28561 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957580 () Bool)

(declare-fun res!641086 () Bool)

(assert (=> b!957580 (=> (not res!641086) (not e!539873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58425 (_ BitVec 32)) Bool)

(assert (=> b!957580 (= res!641086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82202 res!641088) b!957579))

(assert (= (and b!957579 res!641087) b!957580))

(assert (= (and b!957580 res!641086) b!957578))

(assert (= (and b!957576 condMapEmpty!33709) mapIsEmpty!33709))

(assert (= (and b!957576 (not condMapEmpty!33709)) mapNonEmpty!33709))

(get-info :version)

(assert (= (and mapNonEmpty!33709 ((_ is ValueCellFull!10095) mapValue!33709)) b!957577))

(assert (= (and b!957576 ((_ is ValueCellFull!10095) mapDefault!33709)) b!957575))

(assert (= start!82202 b!957576))

(declare-fun m!888561 () Bool)

(assert (=> mapNonEmpty!33709 m!888561))

(declare-fun m!888563 () Bool)

(assert (=> start!82202 m!888563))

(declare-fun m!888565 () Bool)

(assert (=> start!82202 m!888565))

(declare-fun m!888567 () Bool)

(assert (=> start!82202 m!888567))

(declare-fun m!888569 () Bool)

(assert (=> b!957578 m!888569))

(declare-fun m!888571 () Bool)

(assert (=> b!957580 m!888571))

(check-sat tp_is_empty!21153 (not b!957580) (not start!82202) (not b!957578) (not mapNonEmpty!33709))
(check-sat)
