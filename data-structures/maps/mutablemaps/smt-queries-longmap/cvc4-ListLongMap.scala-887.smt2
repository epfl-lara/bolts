; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20434 () Bool)

(assert start!20434)

(declare-fun b_free!5081 () Bool)

(declare-fun b_next!5081 () Bool)

(assert (=> start!20434 (= b_free!5081 (not b_next!5081))))

(declare-fun tp!18275 () Bool)

(declare-fun b_and!11845 () Bool)

(assert (=> start!20434 (= tp!18275 b_and!11845)))

(declare-fun b!202042 () Bool)

(declare-fun res!96737 () Bool)

(declare-fun e!132380 () Bool)

(assert (=> b!202042 (=> (not res!96737) (not e!132380))))

(declare-datatypes ((array!9100 0))(
  ( (array!9101 (arr!4300 (Array (_ BitVec 32) (_ BitVec 64))) (size!4625 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9100)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202042 (= res!96737 (= (select (arr!4300 _keys!825) i!601) k!843))))

(declare-fun res!96731 () Bool)

(assert (=> start!20434 (=> (not res!96731) (not e!132380))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20434 (= res!96731 (validMask!0 mask!1149))))

(assert (=> start!20434 e!132380))

(declare-datatypes ((V!6229 0))(
  ( (V!6230 (val!2513 Int)) )
))
(declare-datatypes ((ValueCell!2125 0))(
  ( (ValueCellFull!2125 (v!4479 V!6229)) (EmptyCell!2125) )
))
(declare-datatypes ((array!9102 0))(
  ( (array!9103 (arr!4301 (Array (_ BitVec 32) ValueCell!2125)) (size!4626 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9102)

(declare-fun e!132384 () Bool)

(declare-fun array_inv!2829 (array!9102) Bool)

(assert (=> start!20434 (and (array_inv!2829 _values!649) e!132384)))

(assert (=> start!20434 true))

(declare-fun tp_is_empty!4937 () Bool)

(assert (=> start!20434 tp_is_empty!4937))

(declare-fun array_inv!2830 (array!9100) Bool)

(assert (=> start!20434 (array_inv!2830 _keys!825)))

(assert (=> start!20434 tp!18275))

(declare-fun mapNonEmpty!8474 () Bool)

(declare-fun mapRes!8474 () Bool)

(declare-fun tp!18274 () Bool)

(declare-fun e!132385 () Bool)

(assert (=> mapNonEmpty!8474 (= mapRes!8474 (and tp!18274 e!132385))))

(declare-fun mapKey!8474 () (_ BitVec 32))

(declare-fun mapRest!8474 () (Array (_ BitVec 32) ValueCell!2125))

(declare-fun mapValue!8474 () ValueCell!2125)

(assert (=> mapNonEmpty!8474 (= (arr!4301 _values!649) (store mapRest!8474 mapKey!8474 mapValue!8474))))

(declare-fun b!202043 () Bool)

(declare-fun res!96734 () Bool)

(assert (=> b!202043 (=> (not res!96734) (not e!132380))))

(assert (=> b!202043 (= res!96734 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4625 _keys!825))))))

(declare-fun b!202044 () Bool)

(declare-fun e!132381 () Bool)

(assert (=> b!202044 (= e!132384 (and e!132381 mapRes!8474))))

(declare-fun condMapEmpty!8474 () Bool)

(declare-fun mapDefault!8474 () ValueCell!2125)

