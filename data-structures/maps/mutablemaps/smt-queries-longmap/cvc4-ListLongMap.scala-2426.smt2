; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38326 () Bool)

(assert start!38326)

(declare-fun b!395002 () Bool)

(declare-fun res!226503 () Bool)

(declare-fun e!239168 () Bool)

(assert (=> b!395002 (=> (not res!226503) (not e!239168))))

(declare-datatypes ((array!23479 0))(
  ( (array!23480 (arr!11190 (Array (_ BitVec 32) (_ BitVec 64))) (size!11542 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23479)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14167 0))(
  ( (V!14168 (val!4943 Int)) )
))
(declare-datatypes ((ValueCell!4555 0))(
  ( (ValueCellFull!4555 (v!7185 V!14167)) (EmptyCell!4555) )
))
(declare-datatypes ((array!23481 0))(
  ( (array!23482 (arr!11191 (Array (_ BitVec 32) ValueCell!4555)) (size!11543 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23481)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395002 (= res!226503 (and (= (size!11543 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11542 _keys!709) (size!11543 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395003 () Bool)

(declare-fun res!226507 () Bool)

(assert (=> b!395003 (=> (not res!226507) (not e!239168))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395003 (= res!226507 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11542 _keys!709))))))

(declare-fun b!395004 () Bool)

(declare-fun e!239166 () Bool)

(declare-fun tp_is_empty!9797 () Bool)

(assert (=> b!395004 (= e!239166 tp_is_empty!9797)))

(declare-fun b!395005 () Bool)

(assert (=> b!395005 (= e!239168 (and (or (= (select (arr!11190 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11190 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!11542 _keys!709))))))

(declare-fun b!395006 () Bool)

(declare-fun res!226505 () Bool)

(assert (=> b!395006 (=> (not res!226505) (not e!239168))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395006 (= res!226505 (validKeyInArray!0 k!794))))

(declare-fun b!395007 () Bool)

(declare-fun res!226502 () Bool)

(assert (=> b!395007 (=> (not res!226502) (not e!239168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395007 (= res!226502 (validMask!0 mask!1025))))

(declare-fun b!395008 () Bool)

(declare-fun res!226506 () Bool)

(assert (=> b!395008 (=> (not res!226506) (not e!239168))))

(declare-datatypes ((List!6467 0))(
  ( (Nil!6464) (Cons!6463 (h!7319 (_ BitVec 64)) (t!11649 List!6467)) )
))
(declare-fun arrayNoDuplicates!0 (array!23479 (_ BitVec 32) List!6467) Bool)

(assert (=> b!395008 (= res!226506 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6464))))

(declare-fun b!395010 () Bool)

(declare-fun e!239164 () Bool)

(assert (=> b!395010 (= e!239164 tp_is_empty!9797)))

(declare-fun b!395011 () Bool)

(declare-fun res!226501 () Bool)

(assert (=> b!395011 (=> (not res!226501) (not e!239168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23479 (_ BitVec 32)) Bool)

(assert (=> b!395011 (= res!226501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!16305 () Bool)

(declare-fun mapRes!16305 () Bool)

(assert (=> mapIsEmpty!16305 mapRes!16305))

(declare-fun mapNonEmpty!16305 () Bool)

(declare-fun tp!32100 () Bool)

(assert (=> mapNonEmpty!16305 (= mapRes!16305 (and tp!32100 e!239164))))

(declare-fun mapRest!16305 () (Array (_ BitVec 32) ValueCell!4555))

(declare-fun mapKey!16305 () (_ BitVec 32))

(declare-fun mapValue!16305 () ValueCell!4555)

(assert (=> mapNonEmpty!16305 (= (arr!11191 _values!549) (store mapRest!16305 mapKey!16305 mapValue!16305))))

(declare-fun res!226504 () Bool)

(assert (=> start!38326 (=> (not res!226504) (not e!239168))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38326 (= res!226504 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11542 _keys!709))))))

(assert (=> start!38326 e!239168))

(assert (=> start!38326 true))

(declare-fun e!239165 () Bool)

(declare-fun array_inv!8192 (array!23481) Bool)

(assert (=> start!38326 (and (array_inv!8192 _values!549) e!239165)))

(declare-fun array_inv!8193 (array!23479) Bool)

(assert (=> start!38326 (array_inv!8193 _keys!709)))

(declare-fun b!395009 () Bool)

(assert (=> b!395009 (= e!239165 (and e!239166 mapRes!16305))))

(declare-fun condMapEmpty!16305 () Bool)

(declare-fun mapDefault!16305 () ValueCell!4555)

