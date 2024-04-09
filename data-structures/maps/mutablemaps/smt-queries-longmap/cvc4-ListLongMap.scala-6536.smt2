; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83132 () Bool)

(assert start!83132)

(declare-fun mapNonEmpty!35002 () Bool)

(declare-fun mapRes!35002 () Bool)

(declare-fun tp!66571 () Bool)

(declare-fun e!546475 () Bool)

(assert (=> mapNonEmpty!35002 (= mapRes!35002 (and tp!66571 e!546475))))

(declare-fun mapKey!35002 () (_ BitVec 32))

(declare-datatypes ((V!34309 0))(
  ( (V!34310 (val!11048 Int)) )
))
(declare-datatypes ((ValueCell!10516 0))(
  ( (ValueCellFull!10516 (v!13607 V!34309)) (EmptyCell!10516) )
))
(declare-datatypes ((array!60037 0))(
  ( (array!60038 (arr!28878 (Array (_ BitVec 32) ValueCell!10516)) (size!29358 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60037)

(declare-fun mapRest!35002 () (Array (_ BitVec 32) ValueCell!10516))

(declare-fun mapValue!35002 () ValueCell!10516)

(assert (=> mapNonEmpty!35002 (= (arr!28878 _values!1425) (store mapRest!35002 mapKey!35002 mapValue!35002))))

(declare-fun b!969254 () Bool)

(declare-fun tp_is_empty!21995 () Bool)

(assert (=> b!969254 (= e!546475 tp_is_empty!21995)))

(declare-fun b!969255 () Bool)

(declare-fun res!648852 () Bool)

(declare-fun e!546473 () Bool)

(assert (=> b!969255 (=> (not res!648852) (not e!546473))))

(declare-datatypes ((array!60039 0))(
  ( (array!60040 (arr!28879 (Array (_ BitVec 32) (_ BitVec 64))) (size!29359 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60039)

(declare-datatypes ((List!20143 0))(
  ( (Nil!20140) (Cons!20139 (h!21301 (_ BitVec 64)) (t!28514 List!20143)) )
))
(declare-fun arrayNoDuplicates!0 (array!60039 (_ BitVec 32) List!20143) Bool)

(assert (=> b!969255 (= res!648852 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20140))))

(declare-fun b!969256 () Bool)

(declare-fun e!546477 () Bool)

(assert (=> b!969256 (= e!546477 tp_is_empty!21995)))

(declare-fun b!969257 () Bool)

(declare-fun res!648851 () Bool)

(assert (=> b!969257 (=> (not res!648851) (not e!546473))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60039 (_ BitVec 32)) Bool)

(assert (=> b!969257 (= res!648851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969258 () Bool)

(declare-fun res!648848 () Bool)

(assert (=> b!969258 (=> (not res!648848) (not e!546473))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969258 (= res!648848 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29359 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29359 _keys!1717))))))

(declare-fun b!969259 () Bool)

(declare-fun res!648850 () Bool)

(assert (=> b!969259 (=> (not res!648850) (not e!546473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969259 (= res!648850 (validKeyInArray!0 (select (arr!28879 _keys!1717) i!822)))))

(declare-fun b!969260 () Bool)

(assert (=> b!969260 (= e!546473 (or (bvslt from!2118 #b00000000000000000000000000000000) (bvsgt from!2118 (size!29359 _keys!1717))))))

(declare-fun b!969261 () Bool)

(declare-fun res!648849 () Bool)

(assert (=> b!969261 (=> (not res!648849) (not e!546473))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969261 (= res!648849 (and (= (size!29358 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29359 _keys!1717) (size!29358 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!648853 () Bool)

(assert (=> start!83132 (=> (not res!648853) (not e!546473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83132 (= res!648853 (validMask!0 mask!2147))))

(assert (=> start!83132 e!546473))

(assert (=> start!83132 true))

(declare-fun e!546474 () Bool)

(declare-fun array_inv!22249 (array!60037) Bool)

(assert (=> start!83132 (and (array_inv!22249 _values!1425) e!546474)))

(declare-fun array_inv!22250 (array!60039) Bool)

(assert (=> start!83132 (array_inv!22250 _keys!1717)))

(declare-fun mapIsEmpty!35002 () Bool)

(assert (=> mapIsEmpty!35002 mapRes!35002))

(declare-fun b!969262 () Bool)

(assert (=> b!969262 (= e!546474 (and e!546477 mapRes!35002))))

(declare-fun condMapEmpty!35002 () Bool)

(declare-fun mapDefault!35002 () ValueCell!10516)

