; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20022 () Bool)

(assert start!20022)

(declare-fun mapIsEmpty!7871 () Bool)

(declare-fun mapRes!7871 () Bool)

(assert (=> mapIsEmpty!7871 mapRes!7871))

(declare-fun b!195990 () Bool)

(declare-fun e!129034 () Bool)

(declare-fun tp_is_empty!4537 () Bool)

(assert (=> b!195990 (= e!129034 tp_is_empty!4537)))

(declare-fun b!195991 () Bool)

(declare-fun res!92494 () Bool)

(declare-fun e!129031 () Bool)

(assert (=> b!195991 (=> (not res!92494) (not e!129031))))

(declare-datatypes ((array!8334 0))(
  ( (array!8335 (arr!3918 (Array (_ BitVec 32) (_ BitVec 64))) (size!4243 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8334)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8334 (_ BitVec 32)) Bool)

(assert (=> b!195991 (= res!92494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!195993 () Bool)

(declare-fun e!129035 () Bool)

(declare-datatypes ((List!2478 0))(
  ( (Nil!2475) (Cons!2474 (h!3116 (_ BitVec 64)) (t!7417 List!2478)) )
))
(declare-fun contains!1385 (List!2478 (_ BitVec 64)) Bool)

(assert (=> b!195993 (= e!129035 (contains!1385 Nil!2475 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195994 () Bool)

(assert (=> b!195994 (= e!129031 e!129035)))

(declare-fun res!92495 () Bool)

(assert (=> b!195994 (=> res!92495 e!129035)))

(assert (=> b!195994 (= res!92495 (contains!1385 Nil!2475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195995 () Bool)

(declare-fun res!92496 () Bool)

(assert (=> b!195995 (=> (not res!92496) (not e!129031))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5697 0))(
  ( (V!5698 (val!2313 Int)) )
))
(declare-datatypes ((ValueCell!1925 0))(
  ( (ValueCellFull!1925 (v!4278 V!5697)) (EmptyCell!1925) )
))
(declare-datatypes ((array!8336 0))(
  ( (array!8337 (arr!3919 (Array (_ BitVec 32) ValueCell!1925)) (size!4244 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8336)

(assert (=> b!195995 (= res!92496 (and (= (size!4244 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4243 _keys!825) (size!4244 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!195996 () Bool)

(declare-fun res!92498 () Bool)

(assert (=> b!195996 (=> (not res!92498) (not e!129031))))

(declare-fun noDuplicate!60 (List!2478) Bool)

(assert (=> b!195996 (= res!92498 (noDuplicate!60 Nil!2475))))

(declare-fun mapNonEmpty!7871 () Bool)

(declare-fun tp!17159 () Bool)

(assert (=> mapNonEmpty!7871 (= mapRes!7871 (and tp!17159 e!129034))))

(declare-fun mapValue!7871 () ValueCell!1925)

(declare-fun mapRest!7871 () (Array (_ BitVec 32) ValueCell!1925))

(declare-fun mapKey!7871 () (_ BitVec 32))

(assert (=> mapNonEmpty!7871 (= (arr!3919 _values!649) (store mapRest!7871 mapKey!7871 mapValue!7871))))

(declare-fun b!195997 () Bool)

(declare-fun e!129032 () Bool)

(assert (=> b!195997 (= e!129032 tp_is_empty!4537)))

(declare-fun b!195998 () Bool)

(declare-fun e!129030 () Bool)

(assert (=> b!195998 (= e!129030 (and e!129032 mapRes!7871))))

(declare-fun condMapEmpty!7871 () Bool)

(declare-fun mapDefault!7871 () ValueCell!1925)

