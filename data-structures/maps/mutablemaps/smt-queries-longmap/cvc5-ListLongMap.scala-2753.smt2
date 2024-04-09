; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40378 () Bool)

(assert start!40378)

(declare-fun b!443366 () Bool)

(declare-fun e!260860 () Bool)

(assert (=> b!443366 (= e!260860 false)))

(declare-fun lt!203319 () Bool)

(declare-datatypes ((array!27289 0))(
  ( (array!27290 (arr!13089 (Array (_ BitVec 32) (_ BitVec 64))) (size!13441 (_ BitVec 32))) )
))
(declare-fun lt!203318 () array!27289)

(declare-datatypes ((List!7823 0))(
  ( (Nil!7820) (Cons!7819 (h!8675 (_ BitVec 64)) (t!13589 List!7823)) )
))
(declare-fun arrayNoDuplicates!0 (array!27289 (_ BitVec 32) List!7823) Bool)

(assert (=> b!443366 (= lt!203319 (arrayNoDuplicates!0 lt!203318 #b00000000000000000000000000000000 Nil!7820))))

(declare-fun b!443367 () Bool)

(declare-fun res!262821 () Bool)

(declare-fun e!260861 () Bool)

(assert (=> b!443367 (=> (not res!262821) (not e!260861))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!27289)

(assert (=> b!443367 (= res!262821 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13441 _keys!709))))))

(declare-fun b!443368 () Bool)

(assert (=> b!443368 (= e!260861 e!260860)))

(declare-fun res!262817 () Bool)

(assert (=> b!443368 (=> (not res!262817) (not e!260860))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27289 (_ BitVec 32)) Bool)

(assert (=> b!443368 (= res!262817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203318 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!443368 (= lt!203318 (array!27290 (store (arr!13089 _keys!709) i!563 k!794) (size!13441 _keys!709)))))

(declare-fun b!443369 () Bool)

(declare-fun e!260863 () Bool)

(declare-fun tp_is_empty!11755 () Bool)

(assert (=> b!443369 (= e!260863 tp_is_empty!11755)))

(declare-fun b!443370 () Bool)

(declare-fun res!262819 () Bool)

(assert (=> b!443370 (=> (not res!262819) (not e!260861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443370 (= res!262819 (validKeyInArray!0 k!794))))

(declare-fun b!443371 () Bool)

(declare-fun res!262825 () Bool)

(assert (=> b!443371 (=> (not res!262825) (not e!260861))))

(declare-fun arrayContainsKey!0 (array!27289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443371 (= res!262825 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!262818 () Bool)

(assert (=> start!40378 (=> (not res!262818) (not e!260861))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40378 (= res!262818 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13441 _keys!709))))))

(assert (=> start!40378 e!260861))

(assert (=> start!40378 true))

(declare-datatypes ((V!16779 0))(
  ( (V!16780 (val!5922 Int)) )
))
(declare-datatypes ((ValueCell!5534 0))(
  ( (ValueCellFull!5534 (v!8169 V!16779)) (EmptyCell!5534) )
))
(declare-datatypes ((array!27291 0))(
  ( (array!27292 (arr!13090 (Array (_ BitVec 32) ValueCell!5534)) (size!13442 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27291)

(declare-fun e!260862 () Bool)

(declare-fun array_inv!9490 (array!27291) Bool)

(assert (=> start!40378 (and (array_inv!9490 _values!549) e!260862)))

(declare-fun array_inv!9491 (array!27289) Bool)

(assert (=> start!40378 (array_inv!9491 _keys!709)))

(declare-fun b!443372 () Bool)

(declare-fun res!262820 () Bool)

(assert (=> b!443372 (=> (not res!262820) (not e!260861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443372 (= res!262820 (validMask!0 mask!1025))))

(declare-fun b!443373 () Bool)

(declare-fun e!260865 () Bool)

(declare-fun mapRes!19260 () Bool)

(assert (=> b!443373 (= e!260862 (and e!260865 mapRes!19260))))

(declare-fun condMapEmpty!19260 () Bool)

(declare-fun mapDefault!19260 () ValueCell!5534)

