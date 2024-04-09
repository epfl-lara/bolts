; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36834 () Bool)

(assert start!36834)

(declare-fun b_free!7953 () Bool)

(declare-fun b_next!7953 () Bool)

(assert (=> start!36834 (= b_free!7953 (not b_next!7953))))

(declare-fun tp!28575 () Bool)

(declare-fun b_and!15213 () Bool)

(assert (=> start!36834 (= tp!28575 b_and!15213)))

(declare-fun b!367928 () Bool)

(declare-fun res!206203 () Bool)

(declare-fun e!225079 () Bool)

(assert (=> b!367928 (=> (not res!206203) (not e!225079))))

(declare-datatypes ((array!21127 0))(
  ( (array!21128 (arr!10029 (Array (_ BitVec 32) (_ BitVec 64))) (size!10381 (_ BitVec 32))) )
))
(declare-fun lt!169444 () array!21127)

(declare-datatypes ((List!5608 0))(
  ( (Nil!5605) (Cons!5604 (h!6460 (_ BitVec 64)) (t!10766 List!5608)) )
))
(declare-fun arrayNoDuplicates!0 (array!21127 (_ BitVec 32) List!5608) Bool)

(assert (=> b!367928 (= res!206203 (arrayNoDuplicates!0 lt!169444 #b00000000000000000000000000000000 Nil!5605))))

(declare-fun b!367929 () Bool)

(declare-fun e!225084 () Bool)

(declare-fun tp_is_empty!8601 () Bool)

(assert (=> b!367929 (= e!225084 tp_is_empty!8601)))

(declare-fun b!367930 () Bool)

(declare-fun e!225082 () Bool)

(assert (=> b!367930 (= e!225082 tp_is_empty!8601)))

(declare-fun mapIsEmpty!14466 () Bool)

(declare-fun mapRes!14466 () Bool)

(assert (=> mapIsEmpty!14466 mapRes!14466))

(declare-fun b!367932 () Bool)

(declare-fun res!206201 () Bool)

(declare-fun e!225081 () Bool)

(assert (=> b!367932 (=> (not res!206201) (not e!225081))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367932 (= res!206201 (validKeyInArray!0 k0!778))))

(declare-fun b!367933 () Bool)

(declare-fun e!225080 () Bool)

(assert (=> b!367933 (= e!225080 (and e!225082 mapRes!14466))))

(declare-fun condMapEmpty!14466 () Bool)

(declare-datatypes ((V!12573 0))(
  ( (V!12574 (val!4345 Int)) )
))
(declare-datatypes ((ValueCell!3957 0))(
  ( (ValueCellFull!3957 (v!6538 V!12573)) (EmptyCell!3957) )
))
(declare-datatypes ((array!21129 0))(
  ( (array!21130 (arr!10030 (Array (_ BitVec 32) ValueCell!3957)) (size!10382 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21129)

(declare-fun mapDefault!14466 () ValueCell!3957)

(assert (=> b!367933 (= condMapEmpty!14466 (= (arr!10030 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3957)) mapDefault!14466)))))

(declare-fun b!367934 () Bool)

(assert (=> b!367934 (= e!225081 e!225079)))

(declare-fun res!206198 () Bool)

(assert (=> b!367934 (=> (not res!206198) (not e!225079))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21127 (_ BitVec 32)) Bool)

(assert (=> b!367934 (= res!206198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169444 mask!970))))

(declare-fun _keys!658 () array!21127)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367934 (= lt!169444 (array!21128 (store (arr!10029 _keys!658) i!548 k0!778) (size!10381 _keys!658)))))

(declare-fun b!367935 () Bool)

(declare-fun res!206195 () Bool)

(assert (=> b!367935 (=> (not res!206195) (not e!225081))))

(assert (=> b!367935 (= res!206195 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5605))))

(declare-fun mapNonEmpty!14466 () Bool)

(declare-fun tp!28574 () Bool)

(assert (=> mapNonEmpty!14466 (= mapRes!14466 (and tp!28574 e!225084))))

(declare-fun mapRest!14466 () (Array (_ BitVec 32) ValueCell!3957))

(declare-fun mapValue!14466 () ValueCell!3957)

(declare-fun mapKey!14466 () (_ BitVec 32))

(assert (=> mapNonEmpty!14466 (= (arr!10030 _values!506) (store mapRest!14466 mapKey!14466 mapValue!14466))))

(declare-fun b!367936 () Bool)

(assert (=> b!367936 (= e!225079 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12573)

(declare-datatypes ((tuple2!5748 0))(
  ( (tuple2!5749 (_1!2884 (_ BitVec 64)) (_2!2884 V!12573)) )
))
(declare-datatypes ((List!5609 0))(
  ( (Nil!5606) (Cons!5605 (h!6461 tuple2!5748) (t!10767 List!5609)) )
))
(declare-datatypes ((ListLongMap!4675 0))(
  ( (ListLongMap!4676 (toList!2353 List!5609)) )
))
(declare-fun lt!169443 () ListLongMap!4675)

(declare-fun minValue!472 () V!12573)

(declare-fun getCurrentListMapNoExtraKeys!621 (array!21127 array!21129 (_ BitVec 32) (_ BitVec 32) V!12573 V!12573 (_ BitVec 32) Int) ListLongMap!4675)

(assert (=> b!367936 (= lt!169443 (getCurrentListMapNoExtraKeys!621 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!367937 () Bool)

(declare-fun res!206196 () Bool)

(assert (=> b!367937 (=> (not res!206196) (not e!225081))))

(assert (=> b!367937 (= res!206196 (or (= (select (arr!10029 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10029 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367938 () Bool)

(declare-fun res!206204 () Bool)

(assert (=> b!367938 (=> (not res!206204) (not e!225081))))

(assert (=> b!367938 (= res!206204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367931 () Bool)

(declare-fun res!206200 () Bool)

(assert (=> b!367931 (=> (not res!206200) (not e!225081))))

(assert (=> b!367931 (= res!206200 (and (= (size!10382 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10381 _keys!658) (size!10382 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!206197 () Bool)

(assert (=> start!36834 (=> (not res!206197) (not e!225081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36834 (= res!206197 (validMask!0 mask!970))))

(assert (=> start!36834 e!225081))

(assert (=> start!36834 true))

(declare-fun array_inv!7410 (array!21129) Bool)

(assert (=> start!36834 (and (array_inv!7410 _values!506) e!225080)))

(assert (=> start!36834 tp!28575))

(assert (=> start!36834 tp_is_empty!8601))

(declare-fun array_inv!7411 (array!21127) Bool)

(assert (=> start!36834 (array_inv!7411 _keys!658)))

(declare-fun b!367939 () Bool)

(declare-fun res!206202 () Bool)

(assert (=> b!367939 (=> (not res!206202) (not e!225081))))

(assert (=> b!367939 (= res!206202 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10381 _keys!658))))))

(declare-fun b!367940 () Bool)

(declare-fun res!206199 () Bool)

(assert (=> b!367940 (=> (not res!206199) (not e!225081))))

(declare-fun arrayContainsKey!0 (array!21127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367940 (= res!206199 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!36834 res!206197) b!367931))

(assert (= (and b!367931 res!206200) b!367938))

(assert (= (and b!367938 res!206204) b!367935))

(assert (= (and b!367935 res!206195) b!367939))

(assert (= (and b!367939 res!206202) b!367932))

(assert (= (and b!367932 res!206201) b!367937))

(assert (= (and b!367937 res!206196) b!367940))

(assert (= (and b!367940 res!206199) b!367934))

(assert (= (and b!367934 res!206198) b!367928))

(assert (= (and b!367928 res!206203) b!367936))

(assert (= (and b!367933 condMapEmpty!14466) mapIsEmpty!14466))

(assert (= (and b!367933 (not condMapEmpty!14466)) mapNonEmpty!14466))

(get-info :version)

(assert (= (and mapNonEmpty!14466 ((_ is ValueCellFull!3957) mapValue!14466)) b!367929))

(assert (= (and b!367933 ((_ is ValueCellFull!3957) mapDefault!14466)) b!367930))

(assert (= start!36834 b!367933))

(declare-fun m!364717 () Bool)

(assert (=> b!367936 m!364717))

(declare-fun m!364719 () Bool)

(assert (=> b!367940 m!364719))

(declare-fun m!364721 () Bool)

(assert (=> mapNonEmpty!14466 m!364721))

(declare-fun m!364723 () Bool)

(assert (=> b!367935 m!364723))

(declare-fun m!364725 () Bool)

(assert (=> b!367928 m!364725))

(declare-fun m!364727 () Bool)

(assert (=> b!367932 m!364727))

(declare-fun m!364729 () Bool)

(assert (=> b!367937 m!364729))

(declare-fun m!364731 () Bool)

(assert (=> start!36834 m!364731))

(declare-fun m!364733 () Bool)

(assert (=> start!36834 m!364733))

(declare-fun m!364735 () Bool)

(assert (=> start!36834 m!364735))

(declare-fun m!364737 () Bool)

(assert (=> b!367934 m!364737))

(declare-fun m!364739 () Bool)

(assert (=> b!367934 m!364739))

(declare-fun m!364741 () Bool)

(assert (=> b!367938 m!364741))

(check-sat (not b!367935) (not b!367934) (not b!367936) (not mapNonEmpty!14466) (not b!367928) (not start!36834) (not b!367932) (not b!367938) b_and!15213 tp_is_empty!8601 (not b_next!7953) (not b!367940))
(check-sat b_and!15213 (not b_next!7953))
