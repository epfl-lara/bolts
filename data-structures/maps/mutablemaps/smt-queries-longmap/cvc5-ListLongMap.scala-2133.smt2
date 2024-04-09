; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36068 () Bool)

(assert start!36068)

(declare-fun b!361839 () Bool)

(declare-fun res!201372 () Bool)

(declare-fun e!221640 () Bool)

(assert (=> b!361839 (=> (not res!201372) (not e!221640))))

(declare-datatypes ((array!20365 0))(
  ( (array!20366 (arr!9664 (Array (_ BitVec 32) (_ BitVec 64))) (size!10016 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20365)

(declare-fun k!1134 () (_ BitVec 64))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361839 (= res!201372 (arrayContainsKey!0 _keys!1541 k!1134 from!1924))))

(declare-fun b!361840 () Bool)

(declare-fun e!221642 () Bool)

(declare-fun tp_is_empty!8419 () Bool)

(assert (=> b!361840 (= e!221642 tp_is_empty!8419)))

(declare-fun res!201371 () Bool)

(assert (=> start!36068 (=> (not res!201371) (not e!221640))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36068 (= res!201371 (validMask!0 mask!1943))))

(assert (=> start!36068 e!221640))

(assert (=> start!36068 true))

(declare-fun array_inv!7104 (array!20365) Bool)

(assert (=> start!36068 (array_inv!7104 _keys!1541)))

(declare-datatypes ((V!12203 0))(
  ( (V!12204 (val!4254 Int)) )
))
(declare-datatypes ((ValueCell!3866 0))(
  ( (ValueCellFull!3866 (v!6445 V!12203)) (EmptyCell!3866) )
))
(declare-datatypes ((array!20367 0))(
  ( (array!20368 (arr!9665 (Array (_ BitVec 32) ValueCell!3866)) (size!10017 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20367)

(declare-fun e!221643 () Bool)

(declare-fun array_inv!7105 (array!20367) Bool)

(assert (=> start!36068 (and (array_inv!7105 _values!1277) e!221643)))

(declare-fun b!361841 () Bool)

(declare-fun mapRes!14163 () Bool)

(assert (=> b!361841 (= e!221643 (and e!221642 mapRes!14163))))

(declare-fun condMapEmpty!14163 () Bool)

(declare-fun mapDefault!14163 () ValueCell!3866)

