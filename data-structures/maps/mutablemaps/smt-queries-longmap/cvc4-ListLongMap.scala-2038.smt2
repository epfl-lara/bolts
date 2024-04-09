; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35408 () Bool)

(assert start!35408)

(declare-fun b!354183 () Bool)

(declare-fun e!217085 () Bool)

(assert (=> b!354183 (= e!217085 false)))

(declare-fun lt!165655 () Bool)

(declare-datatypes ((array!19263 0))(
  ( (array!19264 (arr!9122 (Array (_ BitVec 32) (_ BitVec 64))) (size!9474 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19263)

(declare-datatypes ((List!5316 0))(
  ( (Nil!5313) (Cons!5312 (h!6168 (_ BitVec 64)) (t!10474 List!5316)) )
))
(declare-fun arrayNoDuplicates!0 (array!19263 (_ BitVec 32) List!5316) Bool)

(assert (=> b!354183 (= lt!165655 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5313))))

(declare-fun b!354184 () Bool)

(declare-fun res!196406 () Bool)

(assert (=> b!354184 (=> (not res!196406) (not e!217085))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19263 (_ BitVec 32)) Bool)

(assert (=> b!354184 (= res!196406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13287 () Bool)

(declare-fun mapRes!13287 () Bool)

(assert (=> mapIsEmpty!13287 mapRes!13287))

(declare-fun b!354185 () Bool)

(declare-fun res!196407 () Bool)

(assert (=> b!354185 (=> (not res!196407) (not e!217085))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11447 0))(
  ( (V!11448 (val!3971 Int)) )
))
(declare-datatypes ((ValueCell!3583 0))(
  ( (ValueCellFull!3583 (v!6161 V!11447)) (EmptyCell!3583) )
))
(declare-datatypes ((array!19265 0))(
  ( (array!19266 (arr!9123 (Array (_ BitVec 32) ValueCell!3583)) (size!9475 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19265)

(assert (=> b!354185 (= res!196407 (and (= (size!9475 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9474 _keys!1456) (size!9475 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354186 () Bool)

(declare-fun e!217081 () Bool)

(declare-fun tp_is_empty!7853 () Bool)

(assert (=> b!354186 (= e!217081 tp_is_empty!7853)))

(declare-fun b!354187 () Bool)

(declare-fun e!217084 () Bool)

(assert (=> b!354187 (= e!217084 tp_is_empty!7853)))

(declare-fun res!196408 () Bool)

(assert (=> start!35408 (=> (not res!196408) (not e!217085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35408 (= res!196408 (validMask!0 mask!1842))))

(assert (=> start!35408 e!217085))

(assert (=> start!35408 true))

(declare-fun e!217082 () Bool)

(declare-fun array_inv!6716 (array!19265) Bool)

(assert (=> start!35408 (and (array_inv!6716 _values!1208) e!217082)))

(declare-fun array_inv!6717 (array!19263) Bool)

(assert (=> start!35408 (array_inv!6717 _keys!1456)))

(declare-fun b!354188 () Bool)

(assert (=> b!354188 (= e!217082 (and e!217084 mapRes!13287))))

(declare-fun condMapEmpty!13287 () Bool)

(declare-fun mapDefault!13287 () ValueCell!3583)

