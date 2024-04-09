; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36562 () Bool)

(assert start!36562)

(declare-fun mapNonEmpty!14187 () Bool)

(declare-fun mapRes!14187 () Bool)

(declare-fun tp!28263 () Bool)

(declare-fun e!223451 () Bool)

(assert (=> mapNonEmpty!14187 (= mapRes!14187 (and tp!28263 e!223451))))

(declare-datatypes ((V!12349 0))(
  ( (V!12350 (val!4261 Int)) )
))
(declare-datatypes ((ValueCell!3873 0))(
  ( (ValueCellFull!3873 (v!6452 V!12349)) (EmptyCell!3873) )
))
(declare-fun mapValue!14187 () ValueCell!3873)

(declare-datatypes ((array!20791 0))(
  ( (array!20792 (arr!9870 (Array (_ BitVec 32) ValueCell!3873)) (size!10222 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20791)

(declare-fun mapKey!14187 () (_ BitVec 32))

(declare-fun mapRest!14187 () (Array (_ BitVec 32) ValueCell!3873))

(assert (=> mapNonEmpty!14187 (= (arr!9870 _values!506) (store mapRest!14187 mapKey!14187 mapValue!14187))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun e!223447 () Bool)

(declare-fun b!364975 () Bool)

(declare-datatypes ((array!20793 0))(
  ( (array!20794 (arr!9871 (Array (_ BitVec 32) (_ BitVec 64))) (size!10223 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20793)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!364975 (= e!223447 (and (= (size!10222 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10223 _keys!658) (size!10222 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011) (= (size!10223 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)) (bvsgt #b00000000000000000000000000000000 (size!10223 _keys!658))))))

(declare-fun b!364976 () Bool)

(declare-fun e!223450 () Bool)

(declare-fun tp_is_empty!8433 () Bool)

(assert (=> b!364976 (= e!223450 tp_is_empty!8433)))

(declare-fun b!364977 () Bool)

(declare-fun e!223448 () Bool)

(assert (=> b!364977 (= e!223448 (and e!223450 mapRes!14187))))

(declare-fun condMapEmpty!14187 () Bool)

(declare-fun mapDefault!14187 () ValueCell!3873)

(assert (=> b!364977 (= condMapEmpty!14187 (= (arr!9870 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3873)) mapDefault!14187)))))

(declare-fun mapIsEmpty!14187 () Bool)

(assert (=> mapIsEmpty!14187 mapRes!14187))

(declare-fun res!204148 () Bool)

(assert (=> start!36562 (=> (not res!204148) (not e!223447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36562 (= res!204148 (validMask!0 mask!970))))

(assert (=> start!36562 e!223447))

(assert (=> start!36562 true))

(declare-fun array_inv!7304 (array!20791) Bool)

(assert (=> start!36562 (and (array_inv!7304 _values!506) e!223448)))

(declare-fun array_inv!7305 (array!20793) Bool)

(assert (=> start!36562 (array_inv!7305 _keys!658)))

(declare-fun b!364978 () Bool)

(assert (=> b!364978 (= e!223451 tp_is_empty!8433)))

(assert (= (and start!36562 res!204148) b!364975))

(assert (= (and b!364977 condMapEmpty!14187) mapIsEmpty!14187))

(assert (= (and b!364977 (not condMapEmpty!14187)) mapNonEmpty!14187))

(get-info :version)

(assert (= (and mapNonEmpty!14187 ((_ is ValueCellFull!3873) mapValue!14187)) b!364978))

(assert (= (and b!364977 ((_ is ValueCellFull!3873) mapDefault!14187)) b!364976))

(assert (= start!36562 b!364977))

(declare-fun m!362841 () Bool)

(assert (=> mapNonEmpty!14187 m!362841))

(declare-fun m!362843 () Bool)

(assert (=> start!36562 m!362843))

(declare-fun m!362845 () Bool)

(assert (=> start!36562 m!362845))

(declare-fun m!362847 () Bool)

(assert (=> start!36562 m!362847))

(check-sat (not start!36562) (not mapNonEmpty!14187) tp_is_empty!8433)
(check-sat)
(get-model)

(declare-fun d!72175 () Bool)

(assert (=> d!72175 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36562 d!72175))

(declare-fun d!72177 () Bool)

(assert (=> d!72177 (= (array_inv!7304 _values!506) (bvsge (size!10222 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36562 d!72177))

(declare-fun d!72179 () Bool)

(assert (=> d!72179 (= (array_inv!7305 _keys!658) (bvsge (size!10223 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36562 d!72179))

(declare-fun condMapEmpty!14193 () Bool)

(declare-fun mapDefault!14193 () ValueCell!3873)

(assert (=> mapNonEmpty!14187 (= condMapEmpty!14193 (= mapRest!14187 ((as const (Array (_ BitVec 32) ValueCell!3873)) mapDefault!14193)))))

(declare-fun e!223472 () Bool)

(declare-fun mapRes!14193 () Bool)

(assert (=> mapNonEmpty!14187 (= tp!28263 (and e!223472 mapRes!14193))))

(declare-fun b!364997 () Bool)

(declare-fun e!223471 () Bool)

(assert (=> b!364997 (= e!223471 tp_is_empty!8433)))

(declare-fun b!364998 () Bool)

(assert (=> b!364998 (= e!223472 tp_is_empty!8433)))

(declare-fun mapIsEmpty!14193 () Bool)

(assert (=> mapIsEmpty!14193 mapRes!14193))

(declare-fun mapNonEmpty!14193 () Bool)

(declare-fun tp!28269 () Bool)

(assert (=> mapNonEmpty!14193 (= mapRes!14193 (and tp!28269 e!223471))))

(declare-fun mapRest!14193 () (Array (_ BitVec 32) ValueCell!3873))

(declare-fun mapValue!14193 () ValueCell!3873)

(declare-fun mapKey!14193 () (_ BitVec 32))

(assert (=> mapNonEmpty!14193 (= mapRest!14187 (store mapRest!14193 mapKey!14193 mapValue!14193))))

(assert (= (and mapNonEmpty!14187 condMapEmpty!14193) mapIsEmpty!14193))

(assert (= (and mapNonEmpty!14187 (not condMapEmpty!14193)) mapNonEmpty!14193))

(assert (= (and mapNonEmpty!14193 ((_ is ValueCellFull!3873) mapValue!14193)) b!364997))

(assert (= (and mapNonEmpty!14187 ((_ is ValueCellFull!3873) mapDefault!14193)) b!364998))

(declare-fun m!362857 () Bool)

(assert (=> mapNonEmpty!14193 m!362857))

(check-sat (not mapNonEmpty!14193) tp_is_empty!8433)
(check-sat)
