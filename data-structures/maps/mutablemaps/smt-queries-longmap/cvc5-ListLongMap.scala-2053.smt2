; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35494 () Bool)

(assert start!35494)

(declare-fun b!355443 () Bool)

(declare-fun res!197279 () Bool)

(declare-fun e!217729 () Bool)

(assert (=> b!355443 (=> (not res!197279) (not e!217729))))

(declare-datatypes ((array!19425 0))(
  ( (array!19426 (arr!9203 (Array (_ BitVec 32) (_ BitVec 64))) (size!9555 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19425)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19425 (_ BitVec 32)) Bool)

(assert (=> b!355443 (= res!197279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355444 () Bool)

(declare-fun res!197281 () Bool)

(assert (=> b!355444 (=> (not res!197281) (not e!217729))))

(declare-datatypes ((V!11563 0))(
  ( (V!11564 (val!4014 Int)) )
))
(declare-datatypes ((ValueCell!3626 0))(
  ( (ValueCellFull!3626 (v!6204 V!11563)) (EmptyCell!3626) )
))
(declare-datatypes ((array!19427 0))(
  ( (array!19428 (arr!9204 (Array (_ BitVec 32) ValueCell!3626)) (size!9556 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19427)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355444 (= res!197281 (and (= (size!9556 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9555 _keys!1456) (size!9556 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13416 () Bool)

(declare-fun mapRes!13416 () Bool)

(assert (=> mapIsEmpty!13416 mapRes!13416))

(declare-fun b!355445 () Bool)

(declare-fun e!217727 () Bool)

(declare-fun e!217730 () Bool)

(assert (=> b!355445 (= e!217727 (and e!217730 mapRes!13416))))

(declare-fun condMapEmpty!13416 () Bool)

(declare-fun mapDefault!13416 () ValueCell!3626)

