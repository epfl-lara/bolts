; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20152 () Bool)

(assert start!20152)

(declare-fun b_free!4799 () Bool)

(declare-fun b_next!4799 () Bool)

(assert (=> start!20152 (= b_free!4799 (not b_next!4799))))

(declare-fun tp!17428 () Bool)

(declare-fun b_and!11563 () Bool)

(assert (=> start!20152 (= tp!17428 b_and!11563)))

(declare-fun b!197490 () Bool)

(declare-fun res!93448 () Bool)

(declare-fun e!129953 () Bool)

(assert (=> b!197490 (=> (not res!93448) (not e!129953))))

(declare-datatypes ((array!8562 0))(
  ( (array!8563 (arr!4031 (Array (_ BitVec 32) (_ BitVec 64))) (size!4356 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8562)

(declare-datatypes ((V!5853 0))(
  ( (V!5854 (val!2372 Int)) )
))
(declare-datatypes ((ValueCell!1984 0))(
  ( (ValueCellFull!1984 (v!4338 V!5853)) (EmptyCell!1984) )
))
(declare-datatypes ((array!8564 0))(
  ( (array!8565 (arr!4032 (Array (_ BitVec 32) ValueCell!1984)) (size!4357 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8564)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197490 (= res!93448 (and (= (size!4357 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4356 _keys!825) (size!4357 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197491 () Bool)

(declare-fun res!93451 () Bool)

(assert (=> b!197491 (=> (not res!93451) (not e!129953))))

(declare-datatypes ((List!2536 0))(
  ( (Nil!2533) (Cons!2532 (h!3174 (_ BitVec 64)) (t!7475 List!2536)) )
))
(declare-fun arrayNoDuplicates!0 (array!8562 (_ BitVec 32) List!2536) Bool)

(assert (=> b!197491 (= res!93451 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2533))))

(declare-fun mapIsEmpty!8051 () Bool)

(declare-fun mapRes!8051 () Bool)

(assert (=> mapIsEmpty!8051 mapRes!8051))

(declare-fun b!197492 () Bool)

(declare-fun res!93454 () Bool)

(assert (=> b!197492 (=> (not res!93454) (not e!129953))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197492 (= res!93454 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8051 () Bool)

(declare-fun tp!17429 () Bool)

(declare-fun e!129952 () Bool)

(assert (=> mapNonEmpty!8051 (= mapRes!8051 (and tp!17429 e!129952))))

(declare-fun mapRest!8051 () (Array (_ BitVec 32) ValueCell!1984))

(declare-fun mapValue!8051 () ValueCell!1984)

(declare-fun mapKey!8051 () (_ BitVec 32))

(assert (=> mapNonEmpty!8051 (= (arr!4032 _values!649) (store mapRest!8051 mapKey!8051 mapValue!8051))))

(declare-fun b!197493 () Bool)

(declare-fun res!93453 () Bool)

(assert (=> b!197493 (=> (not res!93453) (not e!129953))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197493 (= res!93453 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4356 _keys!825))))))

(declare-fun res!93449 () Bool)

(assert (=> start!20152 (=> (not res!93449) (not e!129953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20152 (= res!93449 (validMask!0 mask!1149))))

(assert (=> start!20152 e!129953))

(declare-fun e!129955 () Bool)

(declare-fun array_inv!2619 (array!8564) Bool)

(assert (=> start!20152 (and (array_inv!2619 _values!649) e!129955)))

(assert (=> start!20152 true))

(declare-fun tp_is_empty!4655 () Bool)

(assert (=> start!20152 tp_is_empty!4655))

(declare-fun array_inv!2620 (array!8562) Bool)

(assert (=> start!20152 (array_inv!2620 _keys!825)))

(assert (=> start!20152 tp!17428))

(declare-fun b!197494 () Bool)

(declare-fun e!129951 () Bool)

(assert (=> b!197494 (= e!129951 tp_is_empty!4655)))

(declare-fun b!197495 () Bool)

(declare-fun res!93452 () Bool)

(assert (=> b!197495 (=> (not res!93452) (not e!129953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8562 (_ BitVec 32)) Bool)

(assert (=> b!197495 (= res!93452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197496 () Bool)

(assert (=> b!197496 (= e!129955 (and e!129951 mapRes!8051))))

(declare-fun condMapEmpty!8051 () Bool)

(declare-fun mapDefault!8051 () ValueCell!1984)

