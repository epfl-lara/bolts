; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20786 () Bool)

(assert start!20786)

(declare-fun res!101148 () Bool)

(declare-fun e!135744 () Bool)

(assert (=> start!20786 (=> (not res!101148) (not e!135744))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20786 (= res!101148 (validMask!0 mask!1149))))

(assert (=> start!20786 e!135744))

(assert (=> start!20786 true))

(declare-datatypes ((V!6699 0))(
  ( (V!6700 (val!2689 Int)) )
))
(declare-datatypes ((ValueCell!2301 0))(
  ( (ValueCellFull!2301 (v!4655 V!6699)) (EmptyCell!2301) )
))
(declare-datatypes ((array!9782 0))(
  ( (array!9783 (arr!4641 (Array (_ BitVec 32) ValueCell!2301)) (size!4966 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9782)

(declare-fun e!135745 () Bool)

(declare-fun array_inv!3067 (array!9782) Bool)

(assert (=> start!20786 (and (array_inv!3067 _values!649) e!135745)))

(declare-datatypes ((array!9784 0))(
  ( (array!9785 (arr!4642 (Array (_ BitVec 32) (_ BitVec 64))) (size!4967 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9784)

(declare-fun array_inv!3068 (array!9784) Bool)

(assert (=> start!20786 (array_inv!3068 _keys!825)))

(declare-fun mapNonEmpty!9002 () Bool)

(declare-fun mapRes!9002 () Bool)

(declare-fun tp!19325 () Bool)

(declare-fun e!135743 () Bool)

(assert (=> mapNonEmpty!9002 (= mapRes!9002 (and tp!19325 e!135743))))

(declare-fun mapKey!9002 () (_ BitVec 32))

(declare-fun mapValue!9002 () ValueCell!2301)

(declare-fun mapRest!9002 () (Array (_ BitVec 32) ValueCell!2301))

(assert (=> mapNonEmpty!9002 (= (arr!4641 _values!649) (store mapRest!9002 mapKey!9002 mapValue!9002))))

(declare-fun b!208042 () Bool)

(declare-fun res!101147 () Bool)

(assert (=> b!208042 (=> (not res!101147) (not e!135744))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!208042 (= res!101147 (and (= (size!4966 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4967 _keys!825) (size!4966 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208043 () Bool)

(declare-fun e!135742 () Bool)

(declare-fun tp_is_empty!5289 () Bool)

(assert (=> b!208043 (= e!135742 tp_is_empty!5289)))

(declare-fun mapIsEmpty!9002 () Bool)

(assert (=> mapIsEmpty!9002 mapRes!9002))

(declare-fun b!208044 () Bool)

(assert (=> b!208044 (= e!135744 false)))

(declare-fun lt!106747 () Bool)

(declare-datatypes ((List!2991 0))(
  ( (Nil!2988) (Cons!2987 (h!3629 (_ BitVec 64)) (t!7930 List!2991)) )
))
(declare-fun arrayNoDuplicates!0 (array!9784 (_ BitVec 32) List!2991) Bool)

(assert (=> b!208044 (= lt!106747 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2988))))

(declare-fun b!208045 () Bool)

(assert (=> b!208045 (= e!135743 tp_is_empty!5289)))

(declare-fun b!208046 () Bool)

(assert (=> b!208046 (= e!135745 (and e!135742 mapRes!9002))))

(declare-fun condMapEmpty!9002 () Bool)

(declare-fun mapDefault!9002 () ValueCell!2301)

(assert (=> b!208046 (= condMapEmpty!9002 (= (arr!4641 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2301)) mapDefault!9002)))))

(declare-fun b!208047 () Bool)

(declare-fun res!101149 () Bool)

(assert (=> b!208047 (=> (not res!101149) (not e!135744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9784 (_ BitVec 32)) Bool)

(assert (=> b!208047 (= res!101149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20786 res!101148) b!208042))

(assert (= (and b!208042 res!101147) b!208047))

(assert (= (and b!208047 res!101149) b!208044))

(assert (= (and b!208046 condMapEmpty!9002) mapIsEmpty!9002))

(assert (= (and b!208046 (not condMapEmpty!9002)) mapNonEmpty!9002))

(get-info :version)

(assert (= (and mapNonEmpty!9002 ((_ is ValueCellFull!2301) mapValue!9002)) b!208045))

(assert (= (and b!208046 ((_ is ValueCellFull!2301) mapDefault!9002)) b!208043))

(assert (= start!20786 b!208046))

(declare-fun m!235809 () Bool)

(assert (=> start!20786 m!235809))

(declare-fun m!235811 () Bool)

(assert (=> start!20786 m!235811))

(declare-fun m!235813 () Bool)

(assert (=> start!20786 m!235813))

(declare-fun m!235815 () Bool)

(assert (=> mapNonEmpty!9002 m!235815))

(declare-fun m!235817 () Bool)

(assert (=> b!208044 m!235817))

(declare-fun m!235819 () Bool)

(assert (=> b!208047 m!235819))

(check-sat (not mapNonEmpty!9002) (not start!20786) (not b!208044) tp_is_empty!5289 (not b!208047))
(check-sat)
