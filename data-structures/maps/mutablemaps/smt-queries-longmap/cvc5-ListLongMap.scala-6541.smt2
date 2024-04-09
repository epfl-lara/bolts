; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83158 () Bool)

(assert start!83158)

(declare-fun b_free!19123 () Bool)

(declare-fun b_next!19123 () Bool)

(assert (=> start!83158 (= b_free!19123 (not b_next!19123))))

(declare-fun tp!66648 () Bool)

(declare-fun b_and!30629 () Bool)

(assert (=> start!83158 (= tp!66648 b_and!30629)))

(declare-fun b!969605 () Bool)

(declare-fun e!546668 () Bool)

(declare-fun tp_is_empty!22021 () Bool)

(assert (=> b!969605 (= e!546668 tp_is_empty!22021)))

(declare-fun b!969606 () Bool)

(declare-fun res!649084 () Bool)

(declare-fun e!546669 () Bool)

(assert (=> b!969606 (=> (not res!649084) (not e!546669))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34345 0))(
  ( (V!34346 (val!11061 Int)) )
))
(declare-datatypes ((ValueCell!10529 0))(
  ( (ValueCellFull!10529 (v!13620 V!34345)) (EmptyCell!10529) )
))
(declare-datatypes ((array!60089 0))(
  ( (array!60090 (arr!28904 (Array (_ BitVec 32) ValueCell!10529)) (size!29384 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60089)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60091 0))(
  ( (array!60092 (arr!28905 (Array (_ BitVec 32) (_ BitVec 64))) (size!29385 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60091)

(assert (=> b!969606 (= res!649084 (and (= (size!29384 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29385 _keys!1717) (size!29384 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969607 () Bool)

(declare-fun e!546671 () Bool)

(assert (=> b!969607 (= e!546671 tp_is_empty!22021)))

(declare-fun res!649082 () Bool)

(assert (=> start!83158 (=> (not res!649082) (not e!546669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83158 (= res!649082 (validMask!0 mask!2147))))

(assert (=> start!83158 e!546669))

(assert (=> start!83158 true))

(declare-fun e!546670 () Bool)

(declare-fun array_inv!22265 (array!60089) Bool)

(assert (=> start!83158 (and (array_inv!22265 _values!1425) e!546670)))

(assert (=> start!83158 tp_is_empty!22021))

(assert (=> start!83158 tp!66648))

(declare-fun array_inv!22266 (array!60091) Bool)

(assert (=> start!83158 (array_inv!22266 _keys!1717)))

(declare-fun b!969608 () Bool)

(declare-fun res!649087 () Bool)

(assert (=> b!969608 (=> (not res!649087) (not e!546669))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969608 (= res!649087 (validKeyInArray!0 (select (arr!28905 _keys!1717) i!822)))))

(declare-fun b!969609 () Bool)

(declare-fun res!649086 () Bool)

(assert (=> b!969609 (=> (not res!649086) (not e!546669))))

(declare-datatypes ((List!20160 0))(
  ( (Nil!20157) (Cons!20156 (h!21318 (_ BitVec 64)) (t!28531 List!20160)) )
))
(declare-fun arrayNoDuplicates!0 (array!60091 (_ BitVec 32) List!20160) Bool)

(assert (=> b!969609 (= res!649086 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20157))))

(declare-fun mapIsEmpty!35041 () Bool)

(declare-fun mapRes!35041 () Bool)

(assert (=> mapIsEmpty!35041 mapRes!35041))

(declare-fun b!969610 () Bool)

(declare-fun res!649085 () Bool)

(assert (=> b!969610 (=> (not res!649085) (not e!546669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60091 (_ BitVec 32)) Bool)

(assert (=> b!969610 (= res!649085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969611 () Bool)

(declare-fun res!649083 () Bool)

(assert (=> b!969611 (=> (not res!649083) (not e!546669))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969611 (= res!649083 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29385 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29385 _keys!1717))))))

(declare-fun b!969612 () Bool)

(assert (=> b!969612 (= e!546670 (and e!546668 mapRes!35041))))

(declare-fun condMapEmpty!35041 () Bool)

(declare-fun mapDefault!35041 () ValueCell!10529)

