; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36850 () Bool)

(assert start!36850)

(declare-fun b_free!7969 () Bool)

(declare-fun b_next!7969 () Bool)

(assert (=> start!36850 (= b_free!7969 (not b_next!7969))))

(declare-fun tp!28622 () Bool)

(declare-fun b_and!15229 () Bool)

(assert (=> start!36850 (= tp!28622 b_and!15229)))

(declare-fun b!368240 () Bool)

(declare-fun res!206443 () Bool)

(declare-fun e!225226 () Bool)

(assert (=> b!368240 (=> (not res!206443) (not e!225226))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368240 (= res!206443 (validKeyInArray!0 k!778))))

(declare-fun b!368241 () Bool)

(declare-fun res!206441 () Bool)

(assert (=> b!368241 (=> (not res!206441) (not e!225226))))

(declare-datatypes ((array!21159 0))(
  ( (array!21160 (arr!10045 (Array (_ BitVec 32) (_ BitVec 64))) (size!10397 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21159)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368241 (= res!206441 (or (= (select (arr!10045 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10045 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368242 () Bool)

(declare-fun res!206444 () Bool)

(assert (=> b!368242 (=> (not res!206444) (not e!225226))))

(declare-datatypes ((List!5620 0))(
  ( (Nil!5617) (Cons!5616 (h!6472 (_ BitVec 64)) (t!10778 List!5620)) )
))
(declare-fun arrayNoDuplicates!0 (array!21159 (_ BitVec 32) List!5620) Bool)

(assert (=> b!368242 (= res!206444 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5617))))

(declare-fun b!368243 () Bool)

(declare-fun res!206435 () Bool)

(declare-fun e!225227 () Bool)

(assert (=> b!368243 (=> (not res!206435) (not e!225227))))

(declare-fun lt!169491 () array!21159)

(assert (=> b!368243 (= res!206435 (arrayNoDuplicates!0 lt!169491 #b00000000000000000000000000000000 Nil!5617))))

(declare-fun b!368244 () Bool)

(assert (=> b!368244 (= e!225226 e!225227)))

(declare-fun res!206442 () Bool)

(assert (=> b!368244 (=> (not res!206442) (not e!225227))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21159 (_ BitVec 32)) Bool)

(assert (=> b!368244 (= res!206442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169491 mask!970))))

(assert (=> b!368244 (= lt!169491 (array!21160 (store (arr!10045 _keys!658) i!548 k!778) (size!10397 _keys!658)))))

(declare-fun b!368245 () Bool)

(declare-fun res!206439 () Bool)

(assert (=> b!368245 (=> (not res!206439) (not e!225226))))

(assert (=> b!368245 (= res!206439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368246 () Bool)

(declare-fun res!206440 () Bool)

(assert (=> b!368246 (=> (not res!206440) (not e!225226))))

(assert (=> b!368246 (= res!206440 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10397 _keys!658))))))

(declare-fun res!206437 () Bool)

(assert (=> start!36850 (=> (not res!206437) (not e!225226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36850 (= res!206437 (validMask!0 mask!970))))

(assert (=> start!36850 e!225226))

(assert (=> start!36850 true))

(declare-datatypes ((V!12595 0))(
  ( (V!12596 (val!4353 Int)) )
))
(declare-datatypes ((ValueCell!3965 0))(
  ( (ValueCellFull!3965 (v!6546 V!12595)) (EmptyCell!3965) )
))
(declare-datatypes ((array!21161 0))(
  ( (array!21162 (arr!10046 (Array (_ BitVec 32) ValueCell!3965)) (size!10398 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21161)

(declare-fun e!225228 () Bool)

(declare-fun array_inv!7420 (array!21161) Bool)

(assert (=> start!36850 (and (array_inv!7420 _values!506) e!225228)))

(assert (=> start!36850 tp!28622))

(declare-fun tp_is_empty!8617 () Bool)

(assert (=> start!36850 tp_is_empty!8617))

(declare-fun array_inv!7421 (array!21159) Bool)

(assert (=> start!36850 (array_inv!7421 _keys!658)))

(declare-fun b!368247 () Bool)

(declare-fun e!225225 () Bool)

(assert (=> b!368247 (= e!225225 tp_is_empty!8617)))

(declare-fun b!368248 () Bool)

(declare-fun e!225223 () Bool)

(declare-fun mapRes!14490 () Bool)

(assert (=> b!368248 (= e!225228 (and e!225223 mapRes!14490))))

(declare-fun condMapEmpty!14490 () Bool)

(declare-fun mapDefault!14490 () ValueCell!3965)

