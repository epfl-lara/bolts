; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83166 () Bool)

(assert start!83166)

(declare-fun b_free!19131 () Bool)

(declare-fun b_next!19131 () Bool)

(assert (=> start!83166 (= b_free!19131 (not b_next!19131))))

(declare-fun tp!66672 () Bool)

(declare-fun b_and!30637 () Bool)

(assert (=> start!83166 (= tp!66672 b_and!30637)))

(declare-fun mapIsEmpty!35053 () Bool)

(declare-fun mapRes!35053 () Bool)

(assert (=> mapIsEmpty!35053 mapRes!35053))

(declare-fun b!969713 () Bool)

(declare-fun res!649154 () Bool)

(declare-fun e!546730 () Bool)

(assert (=> b!969713 (=> (not res!649154) (not e!546730))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34355 0))(
  ( (V!34356 (val!11065 Int)) )
))
(declare-datatypes ((ValueCell!10533 0))(
  ( (ValueCellFull!10533 (v!13624 V!34355)) (EmptyCell!10533) )
))
(declare-datatypes ((array!60103 0))(
  ( (array!60104 (arr!28911 (Array (_ BitVec 32) ValueCell!10533)) (size!29391 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60103)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60105 0))(
  ( (array!60106 (arr!28912 (Array (_ BitVec 32) (_ BitVec 64))) (size!29392 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60105)

(assert (=> b!969713 (= res!649154 (and (= (size!29391 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29392 _keys!1717) (size!29391 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969714 () Bool)

(declare-fun e!546732 () Bool)

(declare-fun tp_is_empty!22029 () Bool)

(assert (=> b!969714 (= e!546732 tp_is_empty!22029)))

(declare-fun res!649156 () Bool)

(assert (=> start!83166 (=> (not res!649156) (not e!546730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83166 (= res!649156 (validMask!0 mask!2147))))

(assert (=> start!83166 e!546730))

(assert (=> start!83166 true))

(declare-fun e!546728 () Bool)

(declare-fun array_inv!22271 (array!60103) Bool)

(assert (=> start!83166 (and (array_inv!22271 _values!1425) e!546728)))

(assert (=> start!83166 tp_is_empty!22029))

(assert (=> start!83166 tp!66672))

(declare-fun array_inv!22272 (array!60105) Bool)

(assert (=> start!83166 (array_inv!22272 _keys!1717)))

(declare-fun b!969715 () Bool)

(declare-fun e!546729 () Bool)

(assert (=> b!969715 (= e!546729 tp_is_empty!22029)))

(declare-fun b!969716 () Bool)

(declare-fun res!649155 () Bool)

(assert (=> b!969716 (=> (not res!649155) (not e!546730))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969716 (= res!649155 (validKeyInArray!0 (select (arr!28912 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35053 () Bool)

(declare-fun tp!66673 () Bool)

(assert (=> mapNonEmpty!35053 (= mapRes!35053 (and tp!66673 e!546729))))

(declare-fun mapRest!35053 () (Array (_ BitVec 32) ValueCell!10533))

(declare-fun mapValue!35053 () ValueCell!10533)

(declare-fun mapKey!35053 () (_ BitVec 32))

(assert (=> mapNonEmpty!35053 (= (arr!28911 _values!1425) (store mapRest!35053 mapKey!35053 mapValue!35053))))

(declare-fun b!969717 () Bool)

(assert (=> b!969717 (= e!546728 (and e!546732 mapRes!35053))))

(declare-fun condMapEmpty!35053 () Bool)

(declare-fun mapDefault!35053 () ValueCell!10533)

(assert (=> b!969717 (= condMapEmpty!35053 (= (arr!28911 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10533)) mapDefault!35053)))))

(declare-fun b!969718 () Bool)

(declare-fun res!649158 () Bool)

(assert (=> b!969718 (=> (not res!649158) (not e!546730))))

(declare-datatypes ((List!20165 0))(
  ( (Nil!20162) (Cons!20161 (h!21323 (_ BitVec 64)) (t!28536 List!20165)) )
))
(declare-fun arrayNoDuplicates!0 (array!60105 (_ BitVec 32) List!20165) Bool)

(assert (=> b!969718 (= res!649158 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20162))))

(declare-fun b!969719 () Bool)

(assert (=> b!969719 (= e!546730 false)))

(declare-fun lt!431629 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34355)

(declare-fun zeroValue!1367 () V!34355)

(declare-datatypes ((tuple2!14274 0))(
  ( (tuple2!14275 (_1!7147 (_ BitVec 64)) (_2!7147 V!34355)) )
))
(declare-datatypes ((List!20166 0))(
  ( (Nil!20163) (Cons!20162 (h!21324 tuple2!14274) (t!28537 List!20166)) )
))
(declare-datatypes ((ListLongMap!12985 0))(
  ( (ListLongMap!12986 (toList!6508 List!20166)) )
))
(declare-fun contains!5563 (ListLongMap!12985 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3693 (array!60105 array!60103 (_ BitVec 32) (_ BitVec 32) V!34355 V!34355 (_ BitVec 32) Int) ListLongMap!12985)

(assert (=> b!969719 (= lt!431629 (contains!5563 (getCurrentListMap!3693 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28912 _keys!1717) i!822)))))

(declare-fun b!969720 () Bool)

(declare-fun res!649157 () Bool)

(assert (=> b!969720 (=> (not res!649157) (not e!546730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60105 (_ BitVec 32)) Bool)

(assert (=> b!969720 (= res!649157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969721 () Bool)

(declare-fun res!649159 () Bool)

(assert (=> b!969721 (=> (not res!649159) (not e!546730))))

(assert (=> b!969721 (= res!649159 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29392 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29392 _keys!1717))))))

(assert (= (and start!83166 res!649156) b!969713))

(assert (= (and b!969713 res!649154) b!969720))

(assert (= (and b!969720 res!649157) b!969718))

(assert (= (and b!969718 res!649158) b!969721))

(assert (= (and b!969721 res!649159) b!969716))

(assert (= (and b!969716 res!649155) b!969719))

(assert (= (and b!969717 condMapEmpty!35053) mapIsEmpty!35053))

(assert (= (and b!969717 (not condMapEmpty!35053)) mapNonEmpty!35053))

(get-info :version)

(assert (= (and mapNonEmpty!35053 ((_ is ValueCellFull!10533) mapValue!35053)) b!969715))

(assert (= (and b!969717 ((_ is ValueCellFull!10533) mapDefault!35053)) b!969714))

(assert (= start!83166 b!969717))

(declare-fun m!897703 () Bool)

(assert (=> mapNonEmpty!35053 m!897703))

(declare-fun m!897705 () Bool)

(assert (=> b!969719 m!897705))

(declare-fun m!897707 () Bool)

(assert (=> b!969719 m!897707))

(assert (=> b!969719 m!897705))

(assert (=> b!969719 m!897707))

(declare-fun m!897709 () Bool)

(assert (=> b!969719 m!897709))

(declare-fun m!897711 () Bool)

(assert (=> b!969718 m!897711))

(declare-fun m!897713 () Bool)

(assert (=> start!83166 m!897713))

(declare-fun m!897715 () Bool)

(assert (=> start!83166 m!897715))

(declare-fun m!897717 () Bool)

(assert (=> start!83166 m!897717))

(assert (=> b!969716 m!897707))

(assert (=> b!969716 m!897707))

(declare-fun m!897719 () Bool)

(assert (=> b!969716 m!897719))

(declare-fun m!897721 () Bool)

(assert (=> b!969720 m!897721))

(check-sat (not mapNonEmpty!35053) b_and!30637 (not b!969720) tp_is_empty!22029 (not b_next!19131) (not b!969719) (not b!969716) (not start!83166) (not b!969718))
(check-sat b_and!30637 (not b_next!19131))
