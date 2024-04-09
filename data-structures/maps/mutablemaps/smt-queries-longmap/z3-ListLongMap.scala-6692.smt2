; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84154 () Bool)

(assert start!84154)

(declare-fun b!983476 () Bool)

(declare-fun res!658203 () Bool)

(declare-fun e!554468 () Bool)

(assert (=> b!983476 (=> (not res!658203) (not e!554468))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35555 0))(
  ( (V!35556 (val!11515 Int)) )
))
(declare-datatypes ((ValueCell!10983 0))(
  ( (ValueCellFull!10983 (v!14077 V!35555)) (EmptyCell!10983) )
))
(declare-datatypes ((array!61829 0))(
  ( (array!61830 (arr!29768 (Array (_ BitVec 32) ValueCell!10983)) (size!30248 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61829)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61831 0))(
  ( (array!61832 (arr!29769 (Array (_ BitVec 32) (_ BitVec 64))) (size!30249 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61831)

(assert (=> b!983476 (= res!658203 (and (= (size!30248 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30249 _keys!1544) (size!30248 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!658201 () Bool)

(assert (=> start!84154 (=> (not res!658201) (not e!554468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84154 (= res!658201 (validMask!0 mask!1948))))

(assert (=> start!84154 e!554468))

(assert (=> start!84154 true))

(declare-fun e!554464 () Bool)

(declare-fun array_inv!22883 (array!61829) Bool)

(assert (=> start!84154 (and (array_inv!22883 _values!1278) e!554464)))

(declare-fun array_inv!22884 (array!61831) Bool)

(assert (=> start!84154 (array_inv!22884 _keys!1544)))

(declare-fun mapNonEmpty!36422 () Bool)

(declare-fun mapRes!36422 () Bool)

(declare-fun tp!69107 () Bool)

(declare-fun e!554467 () Bool)

(assert (=> mapNonEmpty!36422 (= mapRes!36422 (and tp!69107 e!554467))))

(declare-fun mapRest!36422 () (Array (_ BitVec 32) ValueCell!10983))

(declare-fun mapKey!36422 () (_ BitVec 32))

(declare-fun mapValue!36422 () ValueCell!10983)

(assert (=> mapNonEmpty!36422 (= (arr!29768 _values!1278) (store mapRest!36422 mapKey!36422 mapValue!36422))))

(declare-fun b!983477 () Bool)

(declare-fun e!554466 () Bool)

(declare-fun tp_is_empty!22929 () Bool)

(assert (=> b!983477 (= e!554466 tp_is_empty!22929)))

(declare-fun b!983478 () Bool)

(assert (=> b!983478 (= e!554467 tp_is_empty!22929)))

(declare-fun b!983479 () Bool)

(declare-fun res!658202 () Bool)

(assert (=> b!983479 (=> (not res!658202) (not e!554468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61831 (_ BitVec 32)) Bool)

(assert (=> b!983479 (= res!658202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36422 () Bool)

(assert (=> mapIsEmpty!36422 mapRes!36422))

(declare-fun b!983480 () Bool)

(assert (=> b!983480 (= e!554468 false)))

(declare-fun lt!436495 () Bool)

(declare-datatypes ((List!20748 0))(
  ( (Nil!20745) (Cons!20744 (h!21906 (_ BitVec 64)) (t!29547 List!20748)) )
))
(declare-fun arrayNoDuplicates!0 (array!61831 (_ BitVec 32) List!20748) Bool)

(assert (=> b!983480 (= lt!436495 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20745))))

(declare-fun b!983481 () Bool)

(assert (=> b!983481 (= e!554464 (and e!554466 mapRes!36422))))

(declare-fun condMapEmpty!36422 () Bool)

(declare-fun mapDefault!36422 () ValueCell!10983)

(assert (=> b!983481 (= condMapEmpty!36422 (= (arr!29768 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10983)) mapDefault!36422)))))

(assert (= (and start!84154 res!658201) b!983476))

(assert (= (and b!983476 res!658203) b!983479))

(assert (= (and b!983479 res!658202) b!983480))

(assert (= (and b!983481 condMapEmpty!36422) mapIsEmpty!36422))

(assert (= (and b!983481 (not condMapEmpty!36422)) mapNonEmpty!36422))

(get-info :version)

(assert (= (and mapNonEmpty!36422 ((_ is ValueCellFull!10983) mapValue!36422)) b!983478))

(assert (= (and b!983481 ((_ is ValueCellFull!10983) mapDefault!36422)) b!983477))

(assert (= start!84154 b!983481))

(declare-fun m!910793 () Bool)

(assert (=> start!84154 m!910793))

(declare-fun m!910795 () Bool)

(assert (=> start!84154 m!910795))

(declare-fun m!910797 () Bool)

(assert (=> start!84154 m!910797))

(declare-fun m!910799 () Bool)

(assert (=> mapNonEmpty!36422 m!910799))

(declare-fun m!910801 () Bool)

(assert (=> b!983479 m!910801))

(declare-fun m!910803 () Bool)

(assert (=> b!983480 m!910803))

(check-sat (not b!983479) (not b!983480) (not mapNonEmpty!36422) (not start!84154) tp_is_empty!22929)
(check-sat)
