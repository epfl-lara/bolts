; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41444 () Bool)

(assert start!41444)

(declare-fun b_free!11115 () Bool)

(declare-fun b_next!11115 () Bool)

(assert (=> start!41444 (= b_free!11115 (not b_next!11115))))

(declare-fun tp!39340 () Bool)

(declare-fun b_and!19469 () Bool)

(assert (=> start!41444 (= tp!39340 b_and!19469)))

(declare-fun res!276809 () Bool)

(declare-fun e!270156 () Bool)

(assert (=> start!41444 (=> (not res!276809) (not e!270156))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41444 (= res!276809 (validMask!0 mask!1365))))

(assert (=> start!41444 e!270156))

(declare-fun tp_is_empty!12543 () Bool)

(assert (=> start!41444 tp_is_empty!12543))

(assert (=> start!41444 tp!39340))

(assert (=> start!41444 true))

(declare-datatypes ((array!28847 0))(
  ( (array!28848 (arr!13853 (Array (_ BitVec 32) (_ BitVec 64))) (size!14205 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28847)

(declare-fun array_inv!9998 (array!28847) Bool)

(assert (=> start!41444 (array_inv!9998 _keys!1025)))

(declare-datatypes ((V!17829 0))(
  ( (V!17830 (val!6316 Int)) )
))
(declare-datatypes ((ValueCell!5928 0))(
  ( (ValueCellFull!5928 (v!8599 V!17829)) (EmptyCell!5928) )
))
(declare-datatypes ((array!28849 0))(
  ( (array!28850 (arr!13854 (Array (_ BitVec 32) ValueCell!5928)) (size!14206 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28849)

(declare-fun e!270157 () Bool)

(declare-fun array_inv!9999 (array!28849) Bool)

(assert (=> start!41444 (and (array_inv!9999 _values!833) e!270157)))

(declare-fun b!462786 () Bool)

(declare-fun e!270154 () Bool)

(assert (=> b!462786 (= e!270154 tp_is_empty!12543)))

(declare-fun b!462787 () Bool)

(declare-fun res!276810 () Bool)

(assert (=> b!462787 (=> (not res!276810) (not e!270156))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462787 (= res!276810 (and (= (size!14206 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14205 _keys!1025) (size!14206 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462788 () Bool)

(declare-fun e!270153 () Bool)

(declare-fun mapRes!20488 () Bool)

(assert (=> b!462788 (= e!270157 (and e!270153 mapRes!20488))))

(declare-fun condMapEmpty!20488 () Bool)

(declare-fun mapDefault!20488 () ValueCell!5928)

(assert (=> b!462788 (= condMapEmpty!20488 (= (arr!13854 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5928)) mapDefault!20488)))))

(declare-fun b!462789 () Bool)

(assert (=> b!462789 (= e!270153 tp_is_empty!12543)))

(declare-fun b!462790 () Bool)

(declare-fun res!276811 () Bool)

(assert (=> b!462790 (=> (not res!276811) (not e!270156))))

(declare-datatypes ((List!8368 0))(
  ( (Nil!8365) (Cons!8364 (h!9220 (_ BitVec 64)) (t!14320 List!8368)) )
))
(declare-fun arrayNoDuplicates!0 (array!28847 (_ BitVec 32) List!8368) Bool)

(assert (=> b!462790 (= res!276811 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8365))))

(declare-fun b!462791 () Bool)

(assert (=> b!462791 (= e!270156 false)))

(declare-fun minValueBefore!38 () V!17829)

(declare-fun zeroValue!794 () V!17829)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8240 0))(
  ( (tuple2!8241 (_1!4130 (_ BitVec 64)) (_2!4130 V!17829)) )
))
(declare-datatypes ((List!8369 0))(
  ( (Nil!8366) (Cons!8365 (h!9221 tuple2!8240) (t!14321 List!8369)) )
))
(declare-datatypes ((ListLongMap!7167 0))(
  ( (ListLongMap!7168 (toList!3599 List!8369)) )
))
(declare-fun lt!209250 () ListLongMap!7167)

(declare-fun getCurrentListMapNoExtraKeys!1767 (array!28847 array!28849 (_ BitVec 32) (_ BitVec 32) V!17829 V!17829 (_ BitVec 32) Int) ListLongMap!7167)

(assert (=> b!462791 (= lt!209250 (getCurrentListMapNoExtraKeys!1767 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20488 () Bool)

(declare-fun tp!39339 () Bool)

(assert (=> mapNonEmpty!20488 (= mapRes!20488 (and tp!39339 e!270154))))

(declare-fun mapKey!20488 () (_ BitVec 32))

(declare-fun mapValue!20488 () ValueCell!5928)

(declare-fun mapRest!20488 () (Array (_ BitVec 32) ValueCell!5928))

(assert (=> mapNonEmpty!20488 (= (arr!13854 _values!833) (store mapRest!20488 mapKey!20488 mapValue!20488))))

(declare-fun b!462792 () Bool)

(declare-fun res!276812 () Bool)

(assert (=> b!462792 (=> (not res!276812) (not e!270156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28847 (_ BitVec 32)) Bool)

(assert (=> b!462792 (= res!276812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20488 () Bool)

(assert (=> mapIsEmpty!20488 mapRes!20488))

(assert (= (and start!41444 res!276809) b!462787))

(assert (= (and b!462787 res!276810) b!462792))

(assert (= (and b!462792 res!276812) b!462790))

(assert (= (and b!462790 res!276811) b!462791))

(assert (= (and b!462788 condMapEmpty!20488) mapIsEmpty!20488))

(assert (= (and b!462788 (not condMapEmpty!20488)) mapNonEmpty!20488))

(get-info :version)

(assert (= (and mapNonEmpty!20488 ((_ is ValueCellFull!5928) mapValue!20488)) b!462786))

(assert (= (and b!462788 ((_ is ValueCellFull!5928) mapDefault!20488)) b!462789))

(assert (= start!41444 b!462788))

(declare-fun m!445567 () Bool)

(assert (=> b!462792 m!445567))

(declare-fun m!445569 () Bool)

(assert (=> b!462791 m!445569))

(declare-fun m!445571 () Bool)

(assert (=> start!41444 m!445571))

(declare-fun m!445573 () Bool)

(assert (=> start!41444 m!445573))

(declare-fun m!445575 () Bool)

(assert (=> start!41444 m!445575))

(declare-fun m!445577 () Bool)

(assert (=> b!462790 m!445577))

(declare-fun m!445579 () Bool)

(assert (=> mapNonEmpty!20488 m!445579))

(check-sat tp_is_empty!12543 (not b!462790) (not b_next!11115) (not mapNonEmpty!20488) (not b!462792) (not b!462791) (not start!41444) b_and!19469)
(check-sat b_and!19469 (not b_next!11115))
