; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35266 () Bool)

(assert start!35266)

(declare-fun mapNonEmpty!13140 () Bool)

(declare-fun mapRes!13140 () Bool)

(declare-fun tp!27036 () Bool)

(declare-fun e!216317 () Bool)

(assert (=> mapNonEmpty!13140 (= mapRes!13140 (and tp!27036 e!216317))))

(declare-datatypes ((V!11333 0))(
  ( (V!11334 (val!3928 Int)) )
))
(declare-datatypes ((ValueCell!3540 0))(
  ( (ValueCellFull!3540 (v!6117 V!11333)) (EmptyCell!3540) )
))
(declare-fun mapRest!13140 () (Array (_ BitVec 32) ValueCell!3540))

(declare-fun mapKey!13140 () (_ BitVec 32))

(declare-fun mapValue!13140 () ValueCell!3540)

(declare-datatypes ((array!19085 0))(
  ( (array!19086 (arr!9039 (Array (_ BitVec 32) ValueCell!3540)) (size!9391 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19085)

(assert (=> mapNonEmpty!13140 (= (arr!9039 _values!1208) (store mapRest!13140 mapKey!13140 mapValue!13140))))

(declare-fun res!195932 () Bool)

(declare-fun e!216315 () Bool)

(assert (=> start!35266 (=> (not res!195932) (not e!216315))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35266 (= res!195932 (validMask!0 mask!1842))))

(assert (=> start!35266 e!216315))

(assert (=> start!35266 true))

(declare-fun e!216316 () Bool)

(declare-fun array_inv!6656 (array!19085) Bool)

(assert (=> start!35266 (and (array_inv!6656 _values!1208) e!216316)))

(declare-datatypes ((array!19087 0))(
  ( (array!19088 (arr!9040 (Array (_ BitVec 32) (_ BitVec 64))) (size!9392 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19087)

(declare-fun array_inv!6657 (array!19087) Bool)

(assert (=> start!35266 (array_inv!6657 _keys!1456)))

(declare-fun b!353238 () Bool)

(declare-fun e!216318 () Bool)

(assert (=> b!353238 (= e!216316 (and e!216318 mapRes!13140))))

(declare-fun condMapEmpty!13140 () Bool)

(declare-fun mapDefault!13140 () ValueCell!3540)

(assert (=> b!353238 (= condMapEmpty!13140 (= (arr!9039 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3540)) mapDefault!13140)))))

(declare-fun mapIsEmpty!13140 () Bool)

(assert (=> mapIsEmpty!13140 mapRes!13140))

(declare-fun b!353239 () Bool)

(declare-fun tp_is_empty!7767 () Bool)

(assert (=> b!353239 (= e!216318 tp_is_empty!7767)))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun b!353240 () Bool)

(assert (=> b!353240 (= e!216315 (and (= (size!9391 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9392 _keys!1456) (size!9391 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011) (not (= (size!9392 _keys!1456) (bvadd #b00000000000000000000000000000001 mask!1842)))))))

(declare-fun b!353241 () Bool)

(assert (=> b!353241 (= e!216317 tp_is_empty!7767)))

(assert (= (and start!35266 res!195932) b!353240))

(assert (= (and b!353238 condMapEmpty!13140) mapIsEmpty!13140))

(assert (= (and b!353238 (not condMapEmpty!13140)) mapNonEmpty!13140))

(get-info :version)

(assert (= (and mapNonEmpty!13140 ((_ is ValueCellFull!3540) mapValue!13140)) b!353241))

(assert (= (and b!353238 ((_ is ValueCellFull!3540) mapDefault!13140)) b!353239))

(assert (= start!35266 b!353238))

(declare-fun m!352663 () Bool)

(assert (=> mapNonEmpty!13140 m!352663))

(declare-fun m!352665 () Bool)

(assert (=> start!35266 m!352665))

(declare-fun m!352667 () Bool)

(assert (=> start!35266 m!352667))

(declare-fun m!352669 () Bool)

(assert (=> start!35266 m!352669))

(check-sat (not start!35266) (not mapNonEmpty!13140) tp_is_empty!7767)
(check-sat)
