; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83156 () Bool)

(assert start!83156)

(declare-fun b_free!19121 () Bool)

(declare-fun b_next!19121 () Bool)

(assert (=> start!83156 (= b_free!19121 (not b_next!19121))))

(declare-fun tp!66642 () Bool)

(declare-fun b_and!30627 () Bool)

(assert (=> start!83156 (= tp!66642 b_and!30627)))

(declare-fun b!969578 () Bool)

(declare-fun res!649067 () Bool)

(declare-fun e!546654 () Bool)

(assert (=> b!969578 (=> (not res!649067) (not e!546654))))

(declare-datatypes ((array!60085 0))(
  ( (array!60086 (arr!28902 (Array (_ BitVec 32) (_ BitVec 64))) (size!29382 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60085)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60085 (_ BitVec 32)) Bool)

(assert (=> b!969578 (= res!649067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969579 () Bool)

(declare-fun res!649069 () Bool)

(assert (=> b!969579 (=> (not res!649069) (not e!546654))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969579 (= res!649069 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29382 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29382 _keys!1717))))))

(declare-fun b!969580 () Bool)

(declare-fun e!546657 () Bool)

(declare-fun tp_is_empty!22019 () Bool)

(assert (=> b!969580 (= e!546657 tp_is_empty!22019)))

(declare-fun b!969581 () Bool)

(declare-fun e!546655 () Bool)

(declare-fun e!546653 () Bool)

(declare-fun mapRes!35038 () Bool)

(assert (=> b!969581 (= e!546655 (and e!546653 mapRes!35038))))

(declare-fun condMapEmpty!35038 () Bool)

(declare-datatypes ((V!34341 0))(
  ( (V!34342 (val!11060 Int)) )
))
(declare-datatypes ((ValueCell!10528 0))(
  ( (ValueCellFull!10528 (v!13619 V!34341)) (EmptyCell!10528) )
))
(declare-datatypes ((array!60087 0))(
  ( (array!60088 (arr!28903 (Array (_ BitVec 32) ValueCell!10528)) (size!29383 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60087)

(declare-fun mapDefault!35038 () ValueCell!10528)

