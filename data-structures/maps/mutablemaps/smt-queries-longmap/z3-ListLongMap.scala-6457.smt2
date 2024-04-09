; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82612 () Bool)

(assert start!82612)

(declare-fun b_free!18717 () Bool)

(declare-fun b_next!18717 () Bool)

(assert (=> start!82612 (= b_free!18717 (not b_next!18717))))

(declare-fun tp!65271 () Bool)

(declare-fun b_and!30223 () Bool)

(assert (=> start!82612 (= tp!65271 b_and!30223)))

(declare-fun b!962315 () Bool)

(declare-fun e!542712 () Bool)

(declare-fun tp_is_empty!21519 () Bool)

(assert (=> b!962315 (= e!542712 tp_is_empty!21519)))

(declare-fun b!962316 () Bool)

(declare-fun e!542711 () Bool)

(assert (=> b!962316 (= e!542711 tp_is_empty!21519)))

(declare-fun mapIsEmpty!34273 () Bool)

(declare-fun mapRes!34273 () Bool)

(assert (=> mapIsEmpty!34273 mapRes!34273))

(declare-fun b!962317 () Bool)

(declare-fun e!542710 () Bool)

(assert (=> b!962317 (= e!542710 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33675 0))(
  ( (V!33676 (val!10810 Int)) )
))
(declare-datatypes ((ValueCell!10278 0))(
  ( (ValueCellFull!10278 (v!13368 V!33675)) (EmptyCell!10278) )
))
(declare-datatypes ((array!59117 0))(
  ( (array!59118 (arr!28423 (Array (_ BitVec 32) ValueCell!10278)) (size!28903 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59117)

(declare-datatypes ((array!59119 0))(
  ( (array!59120 (arr!28424 (Array (_ BitVec 32) (_ BitVec 64))) (size!28904 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59119)

(declare-fun minValue!1342 () V!33675)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33675)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lt!430824 () Bool)

(declare-datatypes ((tuple2!13966 0))(
  ( (tuple2!13967 (_1!6993 (_ BitVec 64)) (_2!6993 V!33675)) )
))
(declare-datatypes ((List!19848 0))(
  ( (Nil!19845) (Cons!19844 (h!21006 tuple2!13966) (t!28219 List!19848)) )
))
(declare-datatypes ((ListLongMap!12677 0))(
  ( (ListLongMap!12678 (toList!6354 List!19848)) )
))
(declare-fun contains!5408 (ListLongMap!12677 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3539 (array!59119 array!59117 (_ BitVec 32) (_ BitVec 32) V!33675 V!33675 (_ BitVec 32) Int) ListLongMap!12677)

(assert (=> b!962317 (= lt!430824 (contains!5408 (getCurrentListMap!3539 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28424 _keys!1686) i!803)))))

(declare-fun b!962318 () Bool)

(declare-fun res!644118 () Bool)

(assert (=> b!962318 (=> (not res!644118) (not e!542710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962318 (= res!644118 (validKeyInArray!0 (select (arr!28424 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34273 () Bool)

(declare-fun tp!65272 () Bool)

(assert (=> mapNonEmpty!34273 (= mapRes!34273 (and tp!65272 e!542712))))

(declare-fun mapValue!34273 () ValueCell!10278)

(declare-fun mapRest!34273 () (Array (_ BitVec 32) ValueCell!10278))

(declare-fun mapKey!34273 () (_ BitVec 32))

(assert (=> mapNonEmpty!34273 (= (arr!28423 _values!1400) (store mapRest!34273 mapKey!34273 mapValue!34273))))

(declare-fun b!962319 () Bool)

(declare-fun res!644117 () Bool)

(assert (=> b!962319 (=> (not res!644117) (not e!542710))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962319 (= res!644117 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28904 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28904 _keys!1686))))))

(declare-fun b!962320 () Bool)

(declare-fun res!644119 () Bool)

(assert (=> b!962320 (=> (not res!644119) (not e!542710))))

(assert (=> b!962320 (= res!644119 (and (= (size!28903 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28904 _keys!1686) (size!28903 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962321 () Bool)

(declare-fun res!644116 () Bool)

(assert (=> b!962321 (=> (not res!644116) (not e!542710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59119 (_ BitVec 32)) Bool)

(assert (=> b!962321 (= res!644116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962322 () Bool)

(declare-fun res!644120 () Bool)

(assert (=> b!962322 (=> (not res!644120) (not e!542710))))

(declare-datatypes ((List!19849 0))(
  ( (Nil!19846) (Cons!19845 (h!21007 (_ BitVec 64)) (t!28220 List!19849)) )
))
(declare-fun arrayNoDuplicates!0 (array!59119 (_ BitVec 32) List!19849) Bool)

(assert (=> b!962322 (= res!644120 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19846))))

(declare-fun res!644115 () Bool)

(assert (=> start!82612 (=> (not res!644115) (not e!542710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82612 (= res!644115 (validMask!0 mask!2110))))

(assert (=> start!82612 e!542710))

(assert (=> start!82612 true))

(declare-fun e!542713 () Bool)

(declare-fun array_inv!21947 (array!59117) Bool)

(assert (=> start!82612 (and (array_inv!21947 _values!1400) e!542713)))

(declare-fun array_inv!21948 (array!59119) Bool)

(assert (=> start!82612 (array_inv!21948 _keys!1686)))

(assert (=> start!82612 tp!65271))

(assert (=> start!82612 tp_is_empty!21519))

(declare-fun b!962323 () Bool)

(assert (=> b!962323 (= e!542713 (and e!542711 mapRes!34273))))

(declare-fun condMapEmpty!34273 () Bool)

(declare-fun mapDefault!34273 () ValueCell!10278)

(assert (=> b!962323 (= condMapEmpty!34273 (= (arr!28423 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10278)) mapDefault!34273)))))

(assert (= (and start!82612 res!644115) b!962320))

(assert (= (and b!962320 res!644119) b!962321))

(assert (= (and b!962321 res!644116) b!962322))

(assert (= (and b!962322 res!644120) b!962319))

(assert (= (and b!962319 res!644117) b!962318))

(assert (= (and b!962318 res!644118) b!962317))

(assert (= (and b!962323 condMapEmpty!34273) mapIsEmpty!34273))

(assert (= (and b!962323 (not condMapEmpty!34273)) mapNonEmpty!34273))

(get-info :version)

(assert (= (and mapNonEmpty!34273 ((_ is ValueCellFull!10278) mapValue!34273)) b!962315))

(assert (= (and b!962323 ((_ is ValueCellFull!10278) mapDefault!34273)) b!962316))

(assert (= start!82612 b!962323))

(declare-fun m!892065 () Bool)

(assert (=> start!82612 m!892065))

(declare-fun m!892067 () Bool)

(assert (=> start!82612 m!892067))

(declare-fun m!892069 () Bool)

(assert (=> start!82612 m!892069))

(declare-fun m!892071 () Bool)

(assert (=> b!962318 m!892071))

(assert (=> b!962318 m!892071))

(declare-fun m!892073 () Bool)

(assert (=> b!962318 m!892073))

(declare-fun m!892075 () Bool)

(assert (=> b!962317 m!892075))

(assert (=> b!962317 m!892071))

(assert (=> b!962317 m!892075))

(assert (=> b!962317 m!892071))

(declare-fun m!892077 () Bool)

(assert (=> b!962317 m!892077))

(declare-fun m!892079 () Bool)

(assert (=> b!962321 m!892079))

(declare-fun m!892081 () Bool)

(assert (=> b!962322 m!892081))

(declare-fun m!892083 () Bool)

(assert (=> mapNonEmpty!34273 m!892083))

(check-sat (not mapNonEmpty!34273) (not b!962317) (not b!962321) tp_is_empty!21519 (not b!962318) (not start!82612) (not b_next!18717) b_and!30223 (not b!962322))
(check-sat b_and!30223 (not b_next!18717))
