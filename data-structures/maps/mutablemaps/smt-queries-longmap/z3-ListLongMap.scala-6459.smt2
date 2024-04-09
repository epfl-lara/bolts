; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82624 () Bool)

(assert start!82624)

(declare-fun b_free!18729 () Bool)

(declare-fun b_next!18729 () Bool)

(assert (=> start!82624 (= b_free!18729 (not b_next!18729))))

(declare-fun tp!65307 () Bool)

(declare-fun b_and!30235 () Bool)

(assert (=> start!82624 (= tp!65307 b_and!30235)))

(declare-fun b!962477 () Bool)

(declare-fun res!644227 () Bool)

(declare-fun e!542801 () Bool)

(assert (=> b!962477 (=> (not res!644227) (not e!542801))))

(declare-datatypes ((array!59141 0))(
  ( (array!59142 (arr!28435 (Array (_ BitVec 32) (_ BitVec 64))) (size!28915 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59141)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962477 (= res!644227 (validKeyInArray!0 (select (arr!28435 _keys!1686) i!803)))))

(declare-fun res!644226 () Bool)

(assert (=> start!82624 (=> (not res!644226) (not e!542801))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82624 (= res!644226 (validMask!0 mask!2110))))

(assert (=> start!82624 e!542801))

(assert (=> start!82624 true))

(declare-datatypes ((V!33691 0))(
  ( (V!33692 (val!10816 Int)) )
))
(declare-datatypes ((ValueCell!10284 0))(
  ( (ValueCellFull!10284 (v!13374 V!33691)) (EmptyCell!10284) )
))
(declare-datatypes ((array!59143 0))(
  ( (array!59144 (arr!28436 (Array (_ BitVec 32) ValueCell!10284)) (size!28916 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59143)

(declare-fun e!542802 () Bool)

(declare-fun array_inv!21955 (array!59143) Bool)

(assert (=> start!82624 (and (array_inv!21955 _values!1400) e!542802)))

(declare-fun array_inv!21956 (array!59141) Bool)

(assert (=> start!82624 (array_inv!21956 _keys!1686)))

(assert (=> start!82624 tp!65307))

(declare-fun tp_is_empty!21531 () Bool)

(assert (=> start!82624 tp_is_empty!21531))

(declare-fun b!962478 () Bool)

(declare-fun e!542800 () Bool)

(assert (=> b!962478 (= e!542800 tp_is_empty!21531)))

(declare-fun b!962479 () Bool)

(declare-fun res!644223 () Bool)

(assert (=> b!962479 (=> (not res!644223) (not e!542801))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!962479 (= res!644223 (and (= (size!28916 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28915 _keys!1686) (size!28916 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962480 () Bool)

(declare-fun res!644225 () Bool)

(assert (=> b!962480 (=> (not res!644225) (not e!542801))))

(declare-datatypes ((List!19854 0))(
  ( (Nil!19851) (Cons!19850 (h!21012 (_ BitVec 64)) (t!28225 List!19854)) )
))
(declare-fun arrayNoDuplicates!0 (array!59141 (_ BitVec 32) List!19854) Bool)

(assert (=> b!962480 (= res!644225 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19851))))

(declare-fun b!962481 () Bool)

(assert (=> b!962481 (= e!542801 false)))

(declare-fun minValue!1342 () V!33691)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!430842 () Bool)

(declare-fun zeroValue!1342 () V!33691)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13970 0))(
  ( (tuple2!13971 (_1!6995 (_ BitVec 64)) (_2!6995 V!33691)) )
))
(declare-datatypes ((List!19855 0))(
  ( (Nil!19852) (Cons!19851 (h!21013 tuple2!13970) (t!28226 List!19855)) )
))
(declare-datatypes ((ListLongMap!12681 0))(
  ( (ListLongMap!12682 (toList!6356 List!19855)) )
))
(declare-fun contains!5410 (ListLongMap!12681 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3541 (array!59141 array!59143 (_ BitVec 32) (_ BitVec 32) V!33691 V!33691 (_ BitVec 32) Int) ListLongMap!12681)

(assert (=> b!962481 (= lt!430842 (contains!5410 (getCurrentListMap!3541 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28435 _keys!1686) i!803)))))

(declare-fun b!962482 () Bool)

(declare-fun mapRes!34291 () Bool)

(assert (=> b!962482 (= e!542802 (and e!542800 mapRes!34291))))

(declare-fun condMapEmpty!34291 () Bool)

(declare-fun mapDefault!34291 () ValueCell!10284)

(assert (=> b!962482 (= condMapEmpty!34291 (= (arr!28436 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10284)) mapDefault!34291)))))

(declare-fun b!962483 () Bool)

(declare-fun res!644228 () Bool)

(assert (=> b!962483 (=> (not res!644228) (not e!542801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59141 (_ BitVec 32)) Bool)

(assert (=> b!962483 (= res!644228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34291 () Bool)

(declare-fun tp!65308 () Bool)

(declare-fun e!542803 () Bool)

(assert (=> mapNonEmpty!34291 (= mapRes!34291 (and tp!65308 e!542803))))

(declare-fun mapValue!34291 () ValueCell!10284)

(declare-fun mapRest!34291 () (Array (_ BitVec 32) ValueCell!10284))

(declare-fun mapKey!34291 () (_ BitVec 32))

(assert (=> mapNonEmpty!34291 (= (arr!28436 _values!1400) (store mapRest!34291 mapKey!34291 mapValue!34291))))

(declare-fun mapIsEmpty!34291 () Bool)

(assert (=> mapIsEmpty!34291 mapRes!34291))

(declare-fun b!962484 () Bool)

(assert (=> b!962484 (= e!542803 tp_is_empty!21531)))

(declare-fun b!962485 () Bool)

(declare-fun res!644224 () Bool)

(assert (=> b!962485 (=> (not res!644224) (not e!542801))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962485 (= res!644224 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28915 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28915 _keys!1686))))))

(assert (= (and start!82624 res!644226) b!962479))

(assert (= (and b!962479 res!644223) b!962483))

(assert (= (and b!962483 res!644228) b!962480))

(assert (= (and b!962480 res!644225) b!962485))

(assert (= (and b!962485 res!644224) b!962477))

(assert (= (and b!962477 res!644227) b!962481))

(assert (= (and b!962482 condMapEmpty!34291) mapIsEmpty!34291))

(assert (= (and b!962482 (not condMapEmpty!34291)) mapNonEmpty!34291))

(get-info :version)

(assert (= (and mapNonEmpty!34291 ((_ is ValueCellFull!10284) mapValue!34291)) b!962484))

(assert (= (and b!962482 ((_ is ValueCellFull!10284) mapDefault!34291)) b!962478))

(assert (= start!82624 b!962482))

(declare-fun m!892185 () Bool)

(assert (=> b!962477 m!892185))

(assert (=> b!962477 m!892185))

(declare-fun m!892187 () Bool)

(assert (=> b!962477 m!892187))

(declare-fun m!892189 () Bool)

(assert (=> b!962481 m!892189))

(assert (=> b!962481 m!892185))

(assert (=> b!962481 m!892189))

(assert (=> b!962481 m!892185))

(declare-fun m!892191 () Bool)

(assert (=> b!962481 m!892191))

(declare-fun m!892193 () Bool)

(assert (=> b!962483 m!892193))

(declare-fun m!892195 () Bool)

(assert (=> mapNonEmpty!34291 m!892195))

(declare-fun m!892197 () Bool)

(assert (=> start!82624 m!892197))

(declare-fun m!892199 () Bool)

(assert (=> start!82624 m!892199))

(declare-fun m!892201 () Bool)

(assert (=> start!82624 m!892201))

(declare-fun m!892203 () Bool)

(assert (=> b!962480 m!892203))

(check-sat (not b!962477) (not start!82624) b_and!30235 tp_is_empty!21531 (not mapNonEmpty!34291) (not b!962480) (not b_next!18729) (not b!962481) (not b!962483))
(check-sat b_and!30235 (not b_next!18729))
