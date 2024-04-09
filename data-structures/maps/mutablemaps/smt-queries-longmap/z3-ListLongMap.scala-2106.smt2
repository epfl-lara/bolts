; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35814 () Bool)

(assert start!35814)

(declare-fun b!359439 () Bool)

(declare-fun res!199837 () Bool)

(declare-fun e!220209 () Bool)

(assert (=> b!359439 (=> (not res!199837) (not e!220209))))

(declare-datatypes ((array!20039 0))(
  ( (array!20040 (arr!9510 (Array (_ BitVec 32) (_ BitVec 64))) (size!9862 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20039)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20039 (_ BitVec 32)) Bool)

(assert (=> b!359439 (= res!199837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359440 () Bool)

(declare-fun e!220208 () Bool)

(declare-fun e!220207 () Bool)

(declare-fun mapRes!13896 () Bool)

(assert (=> b!359440 (= e!220208 (and e!220207 mapRes!13896))))

(declare-fun condMapEmpty!13896 () Bool)

(declare-datatypes ((V!11989 0))(
  ( (V!11990 (val!4174 Int)) )
))
(declare-datatypes ((ValueCell!3786 0))(
  ( (ValueCellFull!3786 (v!6364 V!11989)) (EmptyCell!3786) )
))
(declare-datatypes ((array!20041 0))(
  ( (array!20042 (arr!9511 (Array (_ BitVec 32) ValueCell!3786)) (size!9863 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20041)

(declare-fun mapDefault!13896 () ValueCell!3786)

(assert (=> b!359440 (= condMapEmpty!13896 (= (arr!9511 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3786)) mapDefault!13896)))))

(declare-fun b!359441 () Bool)

(declare-fun e!220210 () Bool)

(declare-fun tp_is_empty!8259 () Bool)

(assert (=> b!359441 (= e!220210 tp_is_empty!8259)))

(declare-fun mapNonEmpty!13896 () Bool)

(declare-fun tp!27963 () Bool)

(assert (=> mapNonEmpty!13896 (= mapRes!13896 (and tp!27963 e!220210))))

(declare-fun mapKey!13896 () (_ BitVec 32))

(declare-fun mapRest!13896 () (Array (_ BitVec 32) ValueCell!3786))

(declare-fun mapValue!13896 () ValueCell!3786)

(assert (=> mapNonEmpty!13896 (= (arr!9511 _values!1208) (store mapRest!13896 mapKey!13896 mapValue!13896))))

(declare-fun b!359442 () Bool)

(assert (=> b!359442 (= e!220207 tp_is_empty!8259)))

(declare-fun b!359443 () Bool)

(declare-fun res!199835 () Bool)

(assert (=> b!359443 (=> (not res!199835) (not e!220209))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359443 (= res!199835 (and (= (size!9863 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9862 _keys!1456) (size!9863 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199836 () Bool)

(assert (=> start!35814 (=> (not res!199836) (not e!220209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35814 (= res!199836 (validMask!0 mask!1842))))

(assert (=> start!35814 e!220209))

(assert (=> start!35814 true))

(declare-fun array_inv!7000 (array!20041) Bool)

(assert (=> start!35814 (and (array_inv!7000 _values!1208) e!220208)))

(declare-fun array_inv!7001 (array!20039) Bool)

(assert (=> start!35814 (array_inv!7001 _keys!1456)))

(declare-fun mapIsEmpty!13896 () Bool)

(assert (=> mapIsEmpty!13896 mapRes!13896))

(declare-fun b!359444 () Bool)

(assert (=> b!359444 (= e!220209 false)))

(declare-fun lt!166336 () Bool)

(declare-datatypes ((List!5498 0))(
  ( (Nil!5495) (Cons!5494 (h!6350 (_ BitVec 64)) (t!10656 List!5498)) )
))
(declare-fun arrayNoDuplicates!0 (array!20039 (_ BitVec 32) List!5498) Bool)

(assert (=> b!359444 (= lt!166336 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5495))))

(assert (= (and start!35814 res!199836) b!359443))

(assert (= (and b!359443 res!199835) b!359439))

(assert (= (and b!359439 res!199837) b!359444))

(assert (= (and b!359440 condMapEmpty!13896) mapIsEmpty!13896))

(assert (= (and b!359440 (not condMapEmpty!13896)) mapNonEmpty!13896))

(get-info :version)

(assert (= (and mapNonEmpty!13896 ((_ is ValueCellFull!3786) mapValue!13896)) b!359441))

(assert (= (and b!359440 ((_ is ValueCellFull!3786) mapDefault!13896)) b!359442))

(assert (= start!35814 b!359440))

(declare-fun m!356919 () Bool)

(assert (=> b!359439 m!356919))

(declare-fun m!356921 () Bool)

(assert (=> mapNonEmpty!13896 m!356921))

(declare-fun m!356923 () Bool)

(assert (=> start!35814 m!356923))

(declare-fun m!356925 () Bool)

(assert (=> start!35814 m!356925))

(declare-fun m!356927 () Bool)

(assert (=> start!35814 m!356927))

(declare-fun m!356929 () Bool)

(assert (=> b!359444 m!356929))

(check-sat (not b!359439) tp_is_empty!8259 (not b!359444) (not mapNonEmpty!13896) (not start!35814))
(check-sat)
