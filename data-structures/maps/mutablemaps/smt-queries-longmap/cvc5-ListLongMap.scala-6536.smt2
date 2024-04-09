; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83128 () Bool)

(assert start!83128)

(declare-fun b!969200 () Bool)

(declare-fun res!648814 () Bool)

(declare-fun e!546444 () Bool)

(assert (=> b!969200 (=> (not res!648814) (not e!546444))))

(declare-datatypes ((array!60029 0))(
  ( (array!60030 (arr!28874 (Array (_ BitVec 32) (_ BitVec 64))) (size!29354 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60029)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60029 (_ BitVec 32)) Bool)

(assert (=> b!969200 (= res!648814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!34996 () Bool)

(declare-fun mapRes!34996 () Bool)

(assert (=> mapIsEmpty!34996 mapRes!34996))

(declare-fun b!969201 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969201 (= e!546444 (or (bvslt from!2118 #b00000000000000000000000000000000) (bvsgt from!2118 (size!29354 _keys!1717))))))

(declare-fun mapNonEmpty!34996 () Bool)

(declare-fun tp!66565 () Bool)

(declare-fun e!546445 () Bool)

(assert (=> mapNonEmpty!34996 (= mapRes!34996 (and tp!66565 e!546445))))

(declare-fun mapKey!34996 () (_ BitVec 32))

(declare-datatypes ((V!34305 0))(
  ( (V!34306 (val!11046 Int)) )
))
(declare-datatypes ((ValueCell!10514 0))(
  ( (ValueCellFull!10514 (v!13605 V!34305)) (EmptyCell!10514) )
))
(declare-datatypes ((array!60031 0))(
  ( (array!60032 (arr!28875 (Array (_ BitVec 32) ValueCell!10514)) (size!29355 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60031)

(declare-fun mapValue!34996 () ValueCell!10514)

(declare-fun mapRest!34996 () (Array (_ BitVec 32) ValueCell!10514))

(assert (=> mapNonEmpty!34996 (= (arr!28875 _values!1425) (store mapRest!34996 mapKey!34996 mapValue!34996))))

(declare-fun b!969202 () Bool)

(declare-fun res!648817 () Bool)

(assert (=> b!969202 (=> (not res!648817) (not e!546444))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969202 (= res!648817 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29354 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29354 _keys!1717))))))

(declare-fun res!648812 () Bool)

(assert (=> start!83128 (=> (not res!648812) (not e!546444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83128 (= res!648812 (validMask!0 mask!2147))))

(assert (=> start!83128 e!546444))

(assert (=> start!83128 true))

(declare-fun e!546446 () Bool)

(declare-fun array_inv!22245 (array!60031) Bool)

(assert (=> start!83128 (and (array_inv!22245 _values!1425) e!546446)))

(declare-fun array_inv!22246 (array!60029) Bool)

(assert (=> start!83128 (array_inv!22246 _keys!1717)))

(declare-fun b!969203 () Bool)

(declare-fun e!546447 () Bool)

(assert (=> b!969203 (= e!546446 (and e!546447 mapRes!34996))))

(declare-fun condMapEmpty!34996 () Bool)

(declare-fun mapDefault!34996 () ValueCell!10514)

