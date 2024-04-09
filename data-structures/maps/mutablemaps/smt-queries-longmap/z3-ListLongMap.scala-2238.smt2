; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36900 () Bool)

(assert start!36900)

(declare-fun b_free!8019 () Bool)

(declare-fun b_next!8019 () Bool)

(assert (=> start!36900 (= b_free!8019 (not b_next!8019))))

(declare-fun tp!28772 () Bool)

(declare-fun b_and!15279 () Bool)

(assert (=> start!36900 (= tp!28772 b_and!15279)))

(declare-fun b!369215 () Bool)

(declare-fun res!207187 () Bool)

(declare-fun e!225676 () Bool)

(assert (=> b!369215 (=> (not res!207187) (not e!225676))))

(declare-datatypes ((array!21257 0))(
  ( (array!21258 (arr!10094 (Array (_ BitVec 32) (_ BitVec 64))) (size!10446 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21257)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21257 (_ BitVec 32)) Bool)

(assert (=> b!369215 (= res!207187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!207185 () Bool)

(assert (=> start!36900 (=> (not res!207185) (not e!225676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36900 (= res!207185 (validMask!0 mask!970))))

(assert (=> start!36900 e!225676))

(declare-datatypes ((V!12661 0))(
  ( (V!12662 (val!4378 Int)) )
))
(declare-datatypes ((ValueCell!3990 0))(
  ( (ValueCellFull!3990 (v!6571 V!12661)) (EmptyCell!3990) )
))
(declare-datatypes ((array!21259 0))(
  ( (array!21260 (arr!10095 (Array (_ BitVec 32) ValueCell!3990)) (size!10447 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21259)

(declare-fun e!225677 () Bool)

(declare-fun array_inv!7460 (array!21259) Bool)

(assert (=> start!36900 (and (array_inv!7460 _values!506) e!225677)))

(assert (=> start!36900 tp!28772))

(assert (=> start!36900 true))

(declare-fun tp_is_empty!8667 () Bool)

(assert (=> start!36900 tp_is_empty!8667))

(declare-fun array_inv!7461 (array!21257) Bool)

(assert (=> start!36900 (array_inv!7461 _keys!658)))

(declare-fun mapIsEmpty!14565 () Bool)

(declare-fun mapRes!14565 () Bool)

(assert (=> mapIsEmpty!14565 mapRes!14565))

(declare-fun b!369216 () Bool)

(declare-fun e!225674 () Bool)

(assert (=> b!369216 (= e!225677 (and e!225674 mapRes!14565))))

(declare-fun condMapEmpty!14565 () Bool)

(declare-fun mapDefault!14565 () ValueCell!3990)

(assert (=> b!369216 (= condMapEmpty!14565 (= (arr!10095 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3990)) mapDefault!14565)))))

(declare-fun mapNonEmpty!14565 () Bool)

(declare-fun tp!28773 () Bool)

(declare-fun e!225675 () Bool)

(assert (=> mapNonEmpty!14565 (= mapRes!14565 (and tp!28773 e!225675))))

(declare-fun mapRest!14565 () (Array (_ BitVec 32) ValueCell!3990))

(declare-fun mapValue!14565 () ValueCell!3990)

(declare-fun mapKey!14565 () (_ BitVec 32))

(assert (=> mapNonEmpty!14565 (= (arr!10095 _values!506) (store mapRest!14565 mapKey!14565 mapValue!14565))))

(declare-fun b!369217 () Bool)

(assert (=> b!369217 (= e!225674 tp_is_empty!8667)))

(declare-fun b!369218 () Bool)

(declare-fun res!207186 () Bool)

(assert (=> b!369218 (=> (not res!207186) (not e!225676))))

(declare-datatypes ((List!5659 0))(
  ( (Nil!5656) (Cons!5655 (h!6511 (_ BitVec 64)) (t!10817 List!5659)) )
))
(declare-fun arrayNoDuplicates!0 (array!21257 (_ BitVec 32) List!5659) Bool)

(assert (=> b!369218 (= res!207186 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5656))))

(declare-fun b!369219 () Bool)

(declare-fun e!225678 () Bool)

(assert (=> b!369219 (= e!225678 false)))

(declare-datatypes ((tuple2!5800 0))(
  ( (tuple2!5801 (_1!2910 (_ BitVec 64)) (_2!2910 V!12661)) )
))
(declare-datatypes ((List!5660 0))(
  ( (Nil!5657) (Cons!5656 (h!6512 tuple2!5800) (t!10818 List!5660)) )
))
(declare-datatypes ((ListLongMap!4727 0))(
  ( (ListLongMap!4728 (toList!2379 List!5660)) )
))
(declare-fun lt!169693 () ListLongMap!4727)

(declare-fun defaultEntry!514 () Int)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12661)

(declare-fun zeroValue!472 () V!12661)

(declare-fun lt!169691 () array!21257)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12661)

(declare-fun getCurrentListMapNoExtraKeys!647 (array!21257 array!21259 (_ BitVec 32) (_ BitVec 32) V!12661 V!12661 (_ BitVec 32) Int) ListLongMap!4727)

(assert (=> b!369219 (= lt!169693 (getCurrentListMapNoExtraKeys!647 lt!169691 (array!21260 (store (arr!10095 _values!506) i!548 (ValueCellFull!3990 v!373)) (size!10447 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169692 () ListLongMap!4727)

(assert (=> b!369219 (= lt!169692 (getCurrentListMapNoExtraKeys!647 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369220 () Bool)

(declare-fun res!207191 () Bool)

(assert (=> b!369220 (=> (not res!207191) (not e!225676))))

(assert (=> b!369220 (= res!207191 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10446 _keys!658))))))

(declare-fun b!369221 () Bool)

(assert (=> b!369221 (= e!225676 e!225678)))

(declare-fun res!207188 () Bool)

(assert (=> b!369221 (=> (not res!207188) (not e!225678))))

(assert (=> b!369221 (= res!207188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169691 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!369221 (= lt!169691 (array!21258 (store (arr!10094 _keys!658) i!548 k0!778) (size!10446 _keys!658)))))

(declare-fun b!369222 () Bool)

(assert (=> b!369222 (= e!225675 tp_is_empty!8667)))

(declare-fun b!369223 () Bool)

(declare-fun res!207192 () Bool)

(assert (=> b!369223 (=> (not res!207192) (not e!225676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369223 (= res!207192 (validKeyInArray!0 k0!778))))

(declare-fun b!369224 () Bool)

(declare-fun res!207189 () Bool)

(assert (=> b!369224 (=> (not res!207189) (not e!225676))))

(assert (=> b!369224 (= res!207189 (or (= (select (arr!10094 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10094 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369225 () Bool)

(declare-fun res!207194 () Bool)

(assert (=> b!369225 (=> (not res!207194) (not e!225676))))

(declare-fun arrayContainsKey!0 (array!21257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369225 (= res!207194 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!369226 () Bool)

(declare-fun res!207190 () Bool)

(assert (=> b!369226 (=> (not res!207190) (not e!225676))))

(assert (=> b!369226 (= res!207190 (and (= (size!10447 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10446 _keys!658) (size!10447 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369227 () Bool)

(declare-fun res!207193 () Bool)

(assert (=> b!369227 (=> (not res!207193) (not e!225678))))

(assert (=> b!369227 (= res!207193 (arrayNoDuplicates!0 lt!169691 #b00000000000000000000000000000000 Nil!5656))))

(assert (= (and start!36900 res!207185) b!369226))

(assert (= (and b!369226 res!207190) b!369215))

(assert (= (and b!369215 res!207187) b!369218))

(assert (= (and b!369218 res!207186) b!369220))

(assert (= (and b!369220 res!207191) b!369223))

(assert (= (and b!369223 res!207192) b!369224))

(assert (= (and b!369224 res!207189) b!369225))

(assert (= (and b!369225 res!207194) b!369221))

(assert (= (and b!369221 res!207188) b!369227))

(assert (= (and b!369227 res!207193) b!369219))

(assert (= (and b!369216 condMapEmpty!14565) mapIsEmpty!14565))

(assert (= (and b!369216 (not condMapEmpty!14565)) mapNonEmpty!14565))

(get-info :version)

(assert (= (and mapNonEmpty!14565 ((_ is ValueCellFull!3990) mapValue!14565)) b!369222))

(assert (= (and b!369216 ((_ is ValueCellFull!3990) mapDefault!14565)) b!369217))

(assert (= start!36900 b!369216))

(declare-fun m!365639 () Bool)

(assert (=> b!369224 m!365639))

(declare-fun m!365641 () Bool)

(assert (=> b!369221 m!365641))

(declare-fun m!365643 () Bool)

(assert (=> b!369221 m!365643))

(declare-fun m!365645 () Bool)

(assert (=> start!36900 m!365645))

(declare-fun m!365647 () Bool)

(assert (=> start!36900 m!365647))

(declare-fun m!365649 () Bool)

(assert (=> start!36900 m!365649))

(declare-fun m!365651 () Bool)

(assert (=> b!369225 m!365651))

(declare-fun m!365653 () Bool)

(assert (=> b!369219 m!365653))

(declare-fun m!365655 () Bool)

(assert (=> b!369219 m!365655))

(declare-fun m!365657 () Bool)

(assert (=> b!369219 m!365657))

(declare-fun m!365659 () Bool)

(assert (=> b!369215 m!365659))

(declare-fun m!365661 () Bool)

(assert (=> b!369218 m!365661))

(declare-fun m!365663 () Bool)

(assert (=> b!369223 m!365663))

(declare-fun m!365665 () Bool)

(assert (=> mapNonEmpty!14565 m!365665))

(declare-fun m!365667 () Bool)

(assert (=> b!369227 m!365667))

(check-sat (not b_next!8019) (not start!36900) tp_is_empty!8667 (not b!369215) (not b!369218) (not b!369225) b_and!15279 (not b!369221) (not b!369227) (not b!369219) (not mapNonEmpty!14565) (not b!369223))
(check-sat b_and!15279 (not b_next!8019))
