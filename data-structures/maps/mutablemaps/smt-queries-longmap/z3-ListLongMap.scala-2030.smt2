; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35346 () Bool)

(assert start!35346)

(declare-fun mapNonEmpty!13209 () Bool)

(declare-fun mapRes!13209 () Bool)

(declare-fun tp!27105 () Bool)

(declare-fun e!216682 () Bool)

(assert (=> mapNonEmpty!13209 (= mapRes!13209 (and tp!27105 e!216682))))

(declare-fun mapKey!13209 () (_ BitVec 32))

(declare-datatypes ((V!11381 0))(
  ( (V!11382 (val!3946 Int)) )
))
(declare-datatypes ((ValueCell!3558 0))(
  ( (ValueCellFull!3558 (v!6136 V!11381)) (EmptyCell!3558) )
))
(declare-fun mapRest!13209 () (Array (_ BitVec 32) ValueCell!3558))

(declare-datatypes ((array!19163 0))(
  ( (array!19164 (arr!9073 (Array (_ BitVec 32) ValueCell!3558)) (size!9425 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19163)

(declare-fun mapValue!13209 () ValueCell!3558)

(assert (=> mapNonEmpty!13209 (= (arr!9073 _values!1208) (store mapRest!13209 mapKey!13209 mapValue!13209))))

(declare-fun mapIsEmpty!13209 () Bool)

(assert (=> mapIsEmpty!13209 mapRes!13209))

(declare-fun b!353680 () Bool)

(declare-fun res!196150 () Bool)

(declare-fun e!216683 () Bool)

(assert (=> b!353680 (=> (not res!196150) (not e!216683))))

(declare-datatypes ((array!19165 0))(
  ( (array!19166 (arr!9074 (Array (_ BitVec 32) (_ BitVec 64))) (size!9426 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19165)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19165 (_ BitVec 32)) Bool)

(assert (=> b!353680 (= res!196150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353681 () Bool)

(declare-fun e!216680 () Bool)

(declare-fun tp_is_empty!7803 () Bool)

(assert (=> b!353681 (= e!216680 tp_is_empty!7803)))

(declare-fun res!196149 () Bool)

(assert (=> start!35346 (=> (not res!196149) (not e!216683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35346 (= res!196149 (validMask!0 mask!1842))))

(assert (=> start!35346 e!216683))

(assert (=> start!35346 true))

(declare-fun e!216681 () Bool)

(declare-fun array_inv!6678 (array!19163) Bool)

(assert (=> start!35346 (and (array_inv!6678 _values!1208) e!216681)))

(declare-fun array_inv!6679 (array!19165) Bool)

(assert (=> start!35346 (array_inv!6679 _keys!1456)))

(declare-fun b!353682 () Bool)

(declare-fun res!196148 () Bool)

(assert (=> b!353682 (=> (not res!196148) (not e!216683))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353682 (= res!196148 (and (= (size!9425 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9426 _keys!1456) (size!9425 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353683 () Bool)

(assert (=> b!353683 (= e!216681 (and e!216680 mapRes!13209))))

(declare-fun condMapEmpty!13209 () Bool)

(declare-fun mapDefault!13209 () ValueCell!3558)

(assert (=> b!353683 (= condMapEmpty!13209 (= (arr!9073 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3558)) mapDefault!13209)))))

(declare-fun b!353684 () Bool)

(assert (=> b!353684 (= e!216682 tp_is_empty!7803)))

(declare-fun b!353685 () Bool)

(assert (=> b!353685 (= e!216683 false)))

(declare-fun lt!165580 () Bool)

(declare-datatypes ((List!5299 0))(
  ( (Nil!5296) (Cons!5295 (h!6151 (_ BitVec 64)) (t!10457 List!5299)) )
))
(declare-fun arrayNoDuplicates!0 (array!19165 (_ BitVec 32) List!5299) Bool)

(assert (=> b!353685 (= lt!165580 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5296))))

(assert (= (and start!35346 res!196149) b!353682))

(assert (= (and b!353682 res!196148) b!353680))

(assert (= (and b!353680 res!196150) b!353685))

(assert (= (and b!353683 condMapEmpty!13209) mapIsEmpty!13209))

(assert (= (and b!353683 (not condMapEmpty!13209)) mapNonEmpty!13209))

(get-info :version)

(assert (= (and mapNonEmpty!13209 ((_ is ValueCellFull!3558) mapValue!13209)) b!353684))

(assert (= (and b!353683 ((_ is ValueCellFull!3558) mapDefault!13209)) b!353681))

(assert (= start!35346 b!353683))

(declare-fun m!352935 () Bool)

(assert (=> mapNonEmpty!13209 m!352935))

(declare-fun m!352937 () Bool)

(assert (=> b!353680 m!352937))

(declare-fun m!352939 () Bool)

(assert (=> start!35346 m!352939))

(declare-fun m!352941 () Bool)

(assert (=> start!35346 m!352941))

(declare-fun m!352943 () Bool)

(assert (=> start!35346 m!352943))

(declare-fun m!352945 () Bool)

(assert (=> b!353685 m!352945))

(check-sat tp_is_empty!7803 (not start!35346) (not mapNonEmpty!13209) (not b!353685) (not b!353680))
(check-sat)
