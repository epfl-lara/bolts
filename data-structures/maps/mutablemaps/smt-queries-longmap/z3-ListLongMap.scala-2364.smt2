; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37656 () Bool)

(assert start!37656)

(declare-fun b!385263 () Bool)

(declare-fun res!219831 () Bool)

(declare-fun e!233842 () Bool)

(assert (=> b!385263 (=> (not res!219831) (not e!233842))))

(declare-datatypes ((array!22725 0))(
  ( (array!22726 (arr!10828 (Array (_ BitVec 32) (_ BitVec 64))) (size!11180 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22725)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22725 (_ BitVec 32)) Bool)

(assert (=> b!385263 (= res!219831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!219833 () Bool)

(assert (=> start!37656 (=> (not res!219833) (not e!233842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37656 (= res!219833 (validMask!0 mask!970))))

(assert (=> start!37656 e!233842))

(assert (=> start!37656 true))

(declare-datatypes ((V!13669 0))(
  ( (V!13670 (val!4756 Int)) )
))
(declare-datatypes ((ValueCell!4368 0))(
  ( (ValueCellFull!4368 (v!6949 V!13669)) (EmptyCell!4368) )
))
(declare-datatypes ((array!22727 0))(
  ( (array!22728 (arr!10829 (Array (_ BitVec 32) ValueCell!4368)) (size!11181 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22727)

(declare-fun e!233840 () Bool)

(declare-fun array_inv!7948 (array!22727) Bool)

(assert (=> start!37656 (and (array_inv!7948 _values!506) e!233840)))

(declare-fun array_inv!7949 (array!22725) Bool)

(assert (=> start!37656 (array_inv!7949 _keys!658)))

(declare-fun b!385264 () Bool)

(declare-fun res!219832 () Bool)

(assert (=> b!385264 (=> (not res!219832) (not e!233842))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!385264 (= res!219832 (and (= (size!11181 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11180 _keys!658) (size!11181 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15699 () Bool)

(declare-fun mapRes!15699 () Bool)

(assert (=> mapIsEmpty!15699 mapRes!15699))

(declare-fun b!385265 () Bool)

(declare-fun e!233844 () Bool)

(assert (=> b!385265 (= e!233840 (and e!233844 mapRes!15699))))

(declare-fun condMapEmpty!15699 () Bool)

(declare-fun mapDefault!15699 () ValueCell!4368)

(assert (=> b!385265 (= condMapEmpty!15699 (= (arr!10829 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4368)) mapDefault!15699)))))

(declare-fun b!385266 () Bool)

(assert (=> b!385266 (= e!233842 false)))

(declare-fun lt!181579 () Bool)

(declare-datatypes ((List!6222 0))(
  ( (Nil!6219) (Cons!6218 (h!7074 (_ BitVec 64)) (t!11380 List!6222)) )
))
(declare-fun arrayNoDuplicates!0 (array!22725 (_ BitVec 32) List!6222) Bool)

(assert (=> b!385266 (= lt!181579 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6219))))

(declare-fun b!385267 () Bool)

(declare-fun e!233841 () Bool)

(declare-fun tp_is_empty!9423 () Bool)

(assert (=> b!385267 (= e!233841 tp_is_empty!9423)))

(declare-fun mapNonEmpty!15699 () Bool)

(declare-fun tp!31026 () Bool)

(assert (=> mapNonEmpty!15699 (= mapRes!15699 (and tp!31026 e!233841))))

(declare-fun mapRest!15699 () (Array (_ BitVec 32) ValueCell!4368))

(declare-fun mapValue!15699 () ValueCell!4368)

(declare-fun mapKey!15699 () (_ BitVec 32))

(assert (=> mapNonEmpty!15699 (= (arr!10829 _values!506) (store mapRest!15699 mapKey!15699 mapValue!15699))))

(declare-fun b!385268 () Bool)

(assert (=> b!385268 (= e!233844 tp_is_empty!9423)))

(assert (= (and start!37656 res!219833) b!385264))

(assert (= (and b!385264 res!219832) b!385263))

(assert (= (and b!385263 res!219831) b!385266))

(assert (= (and b!385265 condMapEmpty!15699) mapIsEmpty!15699))

(assert (= (and b!385265 (not condMapEmpty!15699)) mapNonEmpty!15699))

(get-info :version)

(assert (= (and mapNonEmpty!15699 ((_ is ValueCellFull!4368) mapValue!15699)) b!385267))

(assert (= (and b!385265 ((_ is ValueCellFull!4368) mapDefault!15699)) b!385268))

(assert (= start!37656 b!385265))

(declare-fun m!381929 () Bool)

(assert (=> b!385263 m!381929))

(declare-fun m!381931 () Bool)

(assert (=> start!37656 m!381931))

(declare-fun m!381933 () Bool)

(assert (=> start!37656 m!381933))

(declare-fun m!381935 () Bool)

(assert (=> start!37656 m!381935))

(declare-fun m!381937 () Bool)

(assert (=> b!385266 m!381937))

(declare-fun m!381939 () Bool)

(assert (=> mapNonEmpty!15699 m!381939))

(check-sat (not start!37656) (not b!385266) tp_is_empty!9423 (not b!385263) (not mapNonEmpty!15699))
(check-sat)
