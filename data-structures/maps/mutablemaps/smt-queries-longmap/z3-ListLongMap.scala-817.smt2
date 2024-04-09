; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19968 () Bool)

(assert start!19968)

(declare-fun res!92363 () Bool)

(declare-fun e!128809 () Bool)

(assert (=> start!19968 (=> (not res!92363) (not e!128809))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19968 (= res!92363 (validMask!0 mask!1149))))

(assert (=> start!19968 e!128809))

(assert (=> start!19968 true))

(declare-datatypes ((V!5667 0))(
  ( (V!5668 (val!2302 Int)) )
))
(declare-datatypes ((ValueCell!1914 0))(
  ( (ValueCellFull!1914 (v!4267 V!5667)) (EmptyCell!1914) )
))
(declare-datatypes ((array!8286 0))(
  ( (array!8287 (arr!3898 (Array (_ BitVec 32) ValueCell!1914)) (size!4223 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8286)

(declare-fun e!128808 () Bool)

(declare-fun array_inv!2523 (array!8286) Bool)

(assert (=> start!19968 (and (array_inv!2523 _values!649) e!128808)))

(declare-datatypes ((array!8288 0))(
  ( (array!8289 (arr!3899 (Array (_ BitVec 32) (_ BitVec 64))) (size!4224 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8288)

(declare-fun array_inv!2524 (array!8288) Bool)

(assert (=> start!19968 (array_inv!2524 _keys!825)))

(declare-fun b!195711 () Bool)

(declare-fun e!128807 () Bool)

(declare-fun tp_is_empty!4515 () Bool)

(assert (=> b!195711 (= e!128807 tp_is_empty!4515)))

(declare-fun mapNonEmpty!7826 () Bool)

(declare-fun mapRes!7826 () Bool)

(declare-fun tp!17114 () Bool)

(declare-fun e!128810 () Bool)

(assert (=> mapNonEmpty!7826 (= mapRes!7826 (and tp!17114 e!128810))))

(declare-fun mapKey!7826 () (_ BitVec 32))

(declare-fun mapRest!7826 () (Array (_ BitVec 32) ValueCell!1914))

(declare-fun mapValue!7826 () ValueCell!1914)

(assert (=> mapNonEmpty!7826 (= (arr!3898 _values!649) (store mapRest!7826 mapKey!7826 mapValue!7826))))

(declare-fun mapIsEmpty!7826 () Bool)

(assert (=> mapIsEmpty!7826 mapRes!7826))

(declare-fun b!195712 () Bool)

(assert (=> b!195712 (= e!128810 tp_is_empty!4515)))

(declare-fun b!195713 () Bool)

(assert (=> b!195713 (= e!128808 (and e!128807 mapRes!7826))))

(declare-fun condMapEmpty!7826 () Bool)

(declare-fun mapDefault!7826 () ValueCell!1914)

(assert (=> b!195713 (= condMapEmpty!7826 (= (arr!3898 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1914)) mapDefault!7826)))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun b!195714 () Bool)

(assert (=> b!195714 (= e!128809 (and (= (size!4223 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4224 _keys!825) (size!4223 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011) (= (size!4224 _keys!825) (bvadd #b00000000000000000000000000000001 mask!1149)) (bvsgt #b00000000000000000000000000000000 (size!4224 _keys!825))))))

(assert (= (and start!19968 res!92363) b!195714))

(assert (= (and b!195713 condMapEmpty!7826) mapIsEmpty!7826))

(assert (= (and b!195713 (not condMapEmpty!7826)) mapNonEmpty!7826))

(get-info :version)

(assert (= (and mapNonEmpty!7826 ((_ is ValueCellFull!1914) mapValue!7826)) b!195712))

(assert (= (and b!195713 ((_ is ValueCellFull!1914) mapDefault!7826)) b!195711))

(assert (= start!19968 b!195713))

(declare-fun m!223261 () Bool)

(assert (=> start!19968 m!223261))

(declare-fun m!223263 () Bool)

(assert (=> start!19968 m!223263))

(declare-fun m!223265 () Bool)

(assert (=> start!19968 m!223265))

(declare-fun m!223267 () Bool)

(assert (=> mapNonEmpty!7826 m!223267))

(check-sat (not start!19968) (not mapNonEmpty!7826) tp_is_empty!4515)
(check-sat)
(get-model)

(declare-fun d!57441 () Bool)

(assert (=> d!57441 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!19968 d!57441))

(declare-fun d!57443 () Bool)

(assert (=> d!57443 (= (array_inv!2523 _values!649) (bvsge (size!4223 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!19968 d!57443))

(declare-fun d!57445 () Bool)

(assert (=> d!57445 (= (array_inv!2524 _keys!825) (bvsge (size!4224 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!19968 d!57445))

(declare-fun condMapEmpty!7832 () Bool)

(declare-fun mapDefault!7832 () ValueCell!1914)

(assert (=> mapNonEmpty!7826 (= condMapEmpty!7832 (= mapRest!7826 ((as const (Array (_ BitVec 32) ValueCell!1914)) mapDefault!7832)))))

(declare-fun e!128831 () Bool)

(declare-fun mapRes!7832 () Bool)

(assert (=> mapNonEmpty!7826 (= tp!17114 (and e!128831 mapRes!7832))))

(declare-fun mapIsEmpty!7832 () Bool)

(assert (=> mapIsEmpty!7832 mapRes!7832))

(declare-fun mapNonEmpty!7832 () Bool)

(declare-fun tp!17120 () Bool)

(declare-fun e!128830 () Bool)

(assert (=> mapNonEmpty!7832 (= mapRes!7832 (and tp!17120 e!128830))))

(declare-fun mapValue!7832 () ValueCell!1914)

(declare-fun mapKey!7832 () (_ BitVec 32))

(declare-fun mapRest!7832 () (Array (_ BitVec 32) ValueCell!1914))

(assert (=> mapNonEmpty!7832 (= mapRest!7826 (store mapRest!7832 mapKey!7832 mapValue!7832))))

(declare-fun b!195733 () Bool)

(assert (=> b!195733 (= e!128830 tp_is_empty!4515)))

(declare-fun b!195734 () Bool)

(assert (=> b!195734 (= e!128831 tp_is_empty!4515)))

(assert (= (and mapNonEmpty!7826 condMapEmpty!7832) mapIsEmpty!7832))

(assert (= (and mapNonEmpty!7826 (not condMapEmpty!7832)) mapNonEmpty!7832))

(assert (= (and mapNonEmpty!7832 ((_ is ValueCellFull!1914) mapValue!7832)) b!195733))

(assert (= (and mapNonEmpty!7826 ((_ is ValueCellFull!1914) mapDefault!7832)) b!195734))

(declare-fun m!223277 () Bool)

(assert (=> mapNonEmpty!7832 m!223277))

(check-sat (not mapNonEmpty!7832) tp_is_empty!4515)
(check-sat)
