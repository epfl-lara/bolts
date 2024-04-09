; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133812 () Bool)

(assert start!133812)

(declare-fun mapNonEmpty!59658 () Bool)

(declare-fun mapRes!59658 () Bool)

(declare-fun tp!113584 () Bool)

(declare-fun e!871806 () Bool)

(assert (=> mapNonEmpty!59658 (= mapRes!59658 (and tp!113584 e!871806))))

(declare-datatypes ((V!60011 0))(
  ( (V!60012 (val!19510 Int)) )
))
(declare-datatypes ((ValueCell!18396 0))(
  ( (ValueCellFull!18396 (v!22259 V!60011)) (EmptyCell!18396) )
))
(declare-fun mapRest!59658 () (Array (_ BitVec 32) ValueCell!18396))

(declare-fun mapValue!59658 () ValueCell!18396)

(declare-datatypes ((array!104365 0))(
  ( (array!104366 (arr!50369 (Array (_ BitVec 32) ValueCell!18396)) (size!50920 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104365)

(declare-fun mapKey!59658 () (_ BitVec 32))

(assert (=> mapNonEmpty!59658 (= (arr!50369 _values!487) (store mapRest!59658 mapKey!59658 mapValue!59658))))

(declare-fun b!1564141 () Bool)

(declare-fun e!871804 () Bool)

(assert (=> b!1564141 (= e!871804 false)))

(declare-fun lt!671943 () Bool)

(declare-datatypes ((tuple2!25332 0))(
  ( (tuple2!25333 (_1!12676 (_ BitVec 64)) (_2!12676 V!60011)) )
))
(declare-datatypes ((List!36719 0))(
  ( (Nil!36716) (Cons!36715 (h!38162 tuple2!25332) (t!51573 List!36719)) )
))
(declare-datatypes ((ListLongMap!22779 0))(
  ( (ListLongMap!22780 (toList!11405 List!36719)) )
))
(declare-fun contains!10326 (ListLongMap!22779 (_ BitVec 64)) Bool)

(assert (=> b!1564141 (= lt!671943 (contains!10326 (ListLongMap!22780 Nil!36716) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564142 () Bool)

(declare-fun res!1069417 () Bool)

(assert (=> b!1564142 (=> (not res!1069417) (not e!871804))))

(assert (=> b!1564142 (= res!1069417 (not (contains!10326 (ListLongMap!22780 Nil!36716) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564143 () Bool)

(declare-fun tp_is_empty!38853 () Bool)

(assert (=> b!1564143 (= e!871806 tp_is_empty!38853)))

(declare-fun res!1069418 () Bool)

(assert (=> start!133812 (=> (not res!1069418) (not e!871804))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133812 (= res!1069418 (validMask!0 mask!947))))

(assert (=> start!133812 e!871804))

(assert (=> start!133812 true))

(declare-datatypes ((array!104367 0))(
  ( (array!104368 (arr!50370 (Array (_ BitVec 32) (_ BitVec 64))) (size!50921 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104367)

(declare-fun array_inv!39071 (array!104367) Bool)

(assert (=> start!133812 (array_inv!39071 _keys!637)))

(declare-fun e!871808 () Bool)

(declare-fun array_inv!39072 (array!104365) Bool)

(assert (=> start!133812 (and (array_inv!39072 _values!487) e!871808)))

(declare-fun mapIsEmpty!59658 () Bool)

(assert (=> mapIsEmpty!59658 mapRes!59658))

(declare-fun b!1564144 () Bool)

(declare-fun res!1069419 () Bool)

(assert (=> b!1564144 (=> (not res!1069419) (not e!871804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104367 (_ BitVec 32)) Bool)

(assert (=> b!1564144 (= res!1069419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564145 () Bool)

(declare-fun res!1069416 () Bool)

(assert (=> b!1564145 (=> (not res!1069416) (not e!871804))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564145 (= res!1069416 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50921 _keys!637)) (bvsge from!782 (size!50921 _keys!637))))))

(declare-fun b!1564146 () Bool)

(declare-fun e!871805 () Bool)

(assert (=> b!1564146 (= e!871808 (and e!871805 mapRes!59658))))

(declare-fun condMapEmpty!59658 () Bool)

(declare-fun mapDefault!59658 () ValueCell!18396)

(assert (=> b!1564146 (= condMapEmpty!59658 (= (arr!50369 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18396)) mapDefault!59658)))))

(declare-fun b!1564147 () Bool)

(assert (=> b!1564147 (= e!871805 tp_is_empty!38853)))

(declare-fun b!1564148 () Bool)

(declare-fun res!1069420 () Bool)

(assert (=> b!1564148 (=> (not res!1069420) (not e!871804))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564148 (= res!1069420 (and (= (size!50920 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50921 _keys!637) (size!50920 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564149 () Bool)

(declare-fun res!1069421 () Bool)

(assert (=> b!1564149 (=> (not res!1069421) (not e!871804))))

(declare-datatypes ((List!36720 0))(
  ( (Nil!36717) (Cons!36716 (h!38163 (_ BitVec 64)) (t!51574 List!36720)) )
))
(declare-fun arrayNoDuplicates!0 (array!104367 (_ BitVec 32) List!36720) Bool)

(assert (=> b!1564149 (= res!1069421 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36717))))

(assert (= (and start!133812 res!1069418) b!1564148))

(assert (= (and b!1564148 res!1069420) b!1564144))

(assert (= (and b!1564144 res!1069419) b!1564149))

(assert (= (and b!1564149 res!1069421) b!1564145))

(assert (= (and b!1564145 res!1069416) b!1564142))

(assert (= (and b!1564142 res!1069417) b!1564141))

(assert (= (and b!1564146 condMapEmpty!59658) mapIsEmpty!59658))

(assert (= (and b!1564146 (not condMapEmpty!59658)) mapNonEmpty!59658))

(get-info :version)

(assert (= (and mapNonEmpty!59658 ((_ is ValueCellFull!18396) mapValue!59658)) b!1564143))

(assert (= (and b!1564146 ((_ is ValueCellFull!18396) mapDefault!59658)) b!1564147))

(assert (= start!133812 b!1564146))

(declare-fun m!1439453 () Bool)

(assert (=> b!1564142 m!1439453))

(declare-fun m!1439455 () Bool)

(assert (=> b!1564144 m!1439455))

(declare-fun m!1439457 () Bool)

(assert (=> b!1564149 m!1439457))

(declare-fun m!1439459 () Bool)

(assert (=> start!133812 m!1439459))

(declare-fun m!1439461 () Bool)

(assert (=> start!133812 m!1439461))

(declare-fun m!1439463 () Bool)

(assert (=> start!133812 m!1439463))

(declare-fun m!1439465 () Bool)

(assert (=> b!1564141 m!1439465))

(declare-fun m!1439467 () Bool)

(assert (=> mapNonEmpty!59658 m!1439467))

(check-sat (not mapNonEmpty!59658) (not b!1564149) tp_is_empty!38853 (not b!1564144) (not b!1564141) (not b!1564142) (not start!133812))
(check-sat)
