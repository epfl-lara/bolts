; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20130 () Bool)

(assert start!20130)

(declare-fun b_free!4777 () Bool)

(declare-fun b_next!4777 () Bool)

(assert (=> start!20130 (= b_free!4777 (not b_next!4777))))

(declare-fun tp!17362 () Bool)

(declare-fun b_and!11541 () Bool)

(assert (=> start!20130 (= tp!17362 b_and!11541)))

(declare-fun b!197160 () Bool)

(declare-fun e!129788 () Bool)

(declare-fun tp_is_empty!4633 () Bool)

(assert (=> b!197160 (= e!129788 tp_is_empty!4633)))

(declare-fun b!197161 () Bool)

(declare-fun res!93218 () Bool)

(declare-fun e!129787 () Bool)

(assert (=> b!197161 (=> (not res!93218) (not e!129787))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197161 (= res!93218 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8018 () Bool)

(declare-fun mapRes!8018 () Bool)

(assert (=> mapIsEmpty!8018 mapRes!8018))

(declare-fun res!93223 () Bool)

(assert (=> start!20130 (=> (not res!93223) (not e!129787))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20130 (= res!93223 (validMask!0 mask!1149))))

(assert (=> start!20130 e!129787))

(declare-datatypes ((V!5825 0))(
  ( (V!5826 (val!2361 Int)) )
))
(declare-datatypes ((ValueCell!1973 0))(
  ( (ValueCellFull!1973 (v!4327 V!5825)) (EmptyCell!1973) )
))
(declare-datatypes ((array!8518 0))(
  ( (array!8519 (arr!4009 (Array (_ BitVec 32) ValueCell!1973)) (size!4334 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8518)

(declare-fun e!129790 () Bool)

(declare-fun array_inv!2607 (array!8518) Bool)

(assert (=> start!20130 (and (array_inv!2607 _values!649) e!129790)))

(assert (=> start!20130 true))

(assert (=> start!20130 tp_is_empty!4633))

(declare-datatypes ((array!8520 0))(
  ( (array!8521 (arr!4010 (Array (_ BitVec 32) (_ BitVec 64))) (size!4335 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8520)

(declare-fun array_inv!2608 (array!8520) Bool)

(assert (=> start!20130 (array_inv!2608 _keys!825)))

(assert (=> start!20130 tp!17362))

(declare-fun b!197162 () Bool)

(declare-fun e!129786 () Bool)

(assert (=> b!197162 (= e!129786 tp_is_empty!4633)))

(declare-fun mapNonEmpty!8018 () Bool)

(declare-fun tp!17363 () Bool)

(assert (=> mapNonEmpty!8018 (= mapRes!8018 (and tp!17363 e!129788))))

(declare-fun mapRest!8018 () (Array (_ BitVec 32) ValueCell!1973))

(declare-fun mapValue!8018 () ValueCell!1973)

(declare-fun mapKey!8018 () (_ BitVec 32))

(assert (=> mapNonEmpty!8018 (= (arr!4009 _values!649) (store mapRest!8018 mapKey!8018 mapValue!8018))))

(declare-fun b!197163 () Bool)

(declare-fun res!93219 () Bool)

(assert (=> b!197163 (=> (not res!93219) (not e!129787))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197163 (= res!93219 (= (select (arr!4010 _keys!825) i!601) k!843))))

(declare-fun b!197164 () Bool)

(declare-fun res!93217 () Bool)

(assert (=> b!197164 (=> (not res!93217) (not e!129787))))

(assert (=> b!197164 (= res!93217 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4335 _keys!825))))))

(declare-fun b!197165 () Bool)

(assert (=> b!197165 (= e!129787 false)))

(declare-datatypes ((tuple2!3586 0))(
  ( (tuple2!3587 (_1!1803 (_ BitVec 64)) (_2!1803 V!5825)) )
))
(declare-datatypes ((List!2522 0))(
  ( (Nil!2519) (Cons!2518 (h!3160 tuple2!3586) (t!7461 List!2522)) )
))
(declare-datatypes ((ListLongMap!2513 0))(
  ( (ListLongMap!2514 (toList!1272 List!2522)) )
))
(declare-fun lt!97717 () ListLongMap!2513)

(declare-fun zeroValue!615 () V!5825)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5825)

(declare-fun getCurrentListMapNoExtraKeys!229 (array!8520 array!8518 (_ BitVec 32) (_ BitVec 32) V!5825 V!5825 (_ BitVec 32) Int) ListLongMap!2513)

(assert (=> b!197165 (= lt!97717 (getCurrentListMapNoExtraKeys!229 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197166 () Bool)

(declare-fun res!93221 () Bool)

(assert (=> b!197166 (=> (not res!93221) (not e!129787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8520 (_ BitVec 32)) Bool)

(assert (=> b!197166 (= res!93221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197167 () Bool)

(declare-fun res!93222 () Bool)

(assert (=> b!197167 (=> (not res!93222) (not e!129787))))

(assert (=> b!197167 (= res!93222 (and (= (size!4334 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4335 _keys!825) (size!4334 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197168 () Bool)

(declare-fun res!93220 () Bool)

(assert (=> b!197168 (=> (not res!93220) (not e!129787))))

(declare-datatypes ((List!2523 0))(
  ( (Nil!2520) (Cons!2519 (h!3161 (_ BitVec 64)) (t!7462 List!2523)) )
))
(declare-fun arrayNoDuplicates!0 (array!8520 (_ BitVec 32) List!2523) Bool)

(assert (=> b!197168 (= res!93220 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2520))))

(declare-fun b!197169 () Bool)

(assert (=> b!197169 (= e!129790 (and e!129786 mapRes!8018))))

(declare-fun condMapEmpty!8018 () Bool)

(declare-fun mapDefault!8018 () ValueCell!1973)

